
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
struct symt_enum {int dummy; } ;
struct symt_basic {int symt; } ;
struct symt {int dummy; } ;
struct TYPE_16__ {int uvalue; int * string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_18__ {int module; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_19__ {struct symt* symt; TYPE_2__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_20__ {struct symt symt; } ;
struct TYPE_17__ {int tag; } ;


 int DW_AT_byte_size ;
 int DW_AT_name ;

 int FIXME (char*,int,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int btInt ;
 int dwarf2_debug_ctx (TYPE_3__*) ;
 int dwarf2_debug_di (TYPE_4__*) ;
 int dwarf2_find_attribute (TYPE_3__*,TYPE_4__*,int ,struct attribute*) ;
 struct vector* dwarf2_get_di_children (TYPE_3__*,TYPE_4__*) ;
 int dwarf2_parse_enumerator (TYPE_3__*,TYPE_4__*,struct symt_enum*) ;
 struct symt_basic* symt_new_basic (int ,int ,char*,int) ;
 TYPE_5__* symt_new_enum (int ,int *,int *) ;
 scalar_t__ vector_at (struct vector*,unsigned int) ;
 unsigned int vector_length (struct vector*) ;

__attribute__((used)) static struct symt* dwarf2_parse_enumeration_type(dwarf2_parse_context_t* ctx,
                                                  dwarf2_debug_info_t* di)
{
    struct attribute name;
    struct attribute size;
    struct symt_basic* basetype;
    struct vector* children;
    dwarf2_debug_info_t*child;
    unsigned int i;

    if (di->symt) return di->symt;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name)) name.u.string = ((void*)0);
    if (!dwarf2_find_attribute(ctx, di, DW_AT_byte_size, &size)) size.u.uvalue = 4;

    switch (size.u.uvalue)
    {
    case 1: basetype = symt_new_basic(ctx->module, btInt, "char", 1); break;
    case 2: basetype = symt_new_basic(ctx->module, btInt, "short", 2); break;
    default:
    case 4: basetype = symt_new_basic(ctx->module, btInt, "int", 4); break;
    }

    di->symt = &symt_new_enum(ctx->module, name.u.string, &basetype->symt)->symt;

    children = dwarf2_get_di_children(ctx, di);

    if (children) for (i = 0; i < vector_length(children); i++)
    {
        child = *(dwarf2_debug_info_t**)vector_at(children, i);

        switch (child->abbrev->tag)
        {
        case 128:
            dwarf2_parse_enumerator(ctx, child, (struct symt_enum*)di->symt);
            break;
        default:
            FIXME("Unhandled Tag type 0x%lx at %s, for %s\n",
                  di->abbrev->tag, dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));
 }
    }
    return di->symt;
}
