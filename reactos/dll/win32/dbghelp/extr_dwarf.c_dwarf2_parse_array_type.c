
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct vector {int dummy; } ;
struct symt {int dummy; } ;
struct TYPE_17__ {int uvalue; } ;
struct attribute {TYPE_2__ u; } ;
struct TYPE_18__ {int module; struct symt** symt_cache; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_19__ {struct symt* symt; TYPE_1__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_20__ {struct symt symt; } ;
struct TYPE_16__ {int tag; } ;


 int DW_AT_count ;
 int DW_AT_lower_bound ;
 int DW_AT_upper_bound ;

 int FIXME (char*,int,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int dwarf2_debug_ctx (TYPE_3__*) ;
 int dwarf2_debug_di (TYPE_4__*) ;
 int dwarf2_find_attribute (TYPE_3__*,TYPE_4__*,int ,struct attribute*) ;
 struct vector* dwarf2_get_di_children (TYPE_3__*,TYPE_4__*) ;
 struct symt* dwarf2_lookup_type (TYPE_3__*,TYPE_4__*) ;
 size_t sc_int4 ;
 TYPE_5__* symt_new_array (int ,int,int,struct symt*,struct symt*) ;
 scalar_t__ vector_at (struct vector const*,unsigned int) ;
 unsigned int vector_length (struct vector const*) ;

__attribute__((used)) static struct symt* dwarf2_parse_array_type(dwarf2_parse_context_t* ctx,
                                            dwarf2_debug_info_t* di)
{
    struct symt* ref_type;
    struct symt* idx_type = ((void*)0);
    struct attribute min, max, cnt;
    dwarf2_debug_info_t* child;
    unsigned int i;
    const struct vector* children;

    if (di->symt) return di->symt;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    ref_type = dwarf2_lookup_type(ctx, di);

    if (!(children = dwarf2_get_di_children(ctx, di)))
    {


        idx_type = ctx->symt_cache[sc_int4];
        min.u.uvalue = 0;
        max.u.uvalue = -1;
    }
    else for (i = 0; i < vector_length(children); i++)
    {
        child = *(dwarf2_debug_info_t**)vector_at(children, i);
        switch (child->abbrev->tag)
        {
        case 128:
            idx_type = dwarf2_lookup_type(ctx, child);
            if (!dwarf2_find_attribute(ctx, child, DW_AT_lower_bound, &min))
                min.u.uvalue = 0;
            if (!dwarf2_find_attribute(ctx, child, DW_AT_upper_bound, &max))
                max.u.uvalue = 0;
            if (dwarf2_find_attribute(ctx, child, DW_AT_count, &cnt))
                max.u.uvalue = min.u.uvalue + cnt.u.uvalue;
            break;
        default:
            FIXME("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));
            break;
        }
    }
    di->symt = &symt_new_array(ctx->module, min.u.uvalue, max.u.uvalue, ref_type, idx_type)->symt;
    return di->symt;
}
