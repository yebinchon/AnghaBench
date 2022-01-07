
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct vector {int dummy; } ;
struct symt_udt {int dummy; } ;
struct symt {int dummy; } ;
struct TYPE_26__ {char* string; scalar_t__ uvalue; } ;
struct attribute {TYPE_1__ u; } ;
typedef enum UdtKind { ____Placeholder_UdtKind } UdtKind ;
struct TYPE_28__ {int module; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_29__ {struct symt* symt; TYPE_2__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_30__ {struct symt symt; } ;
struct TYPE_27__ {int tag; } ;


 int DW_AT_byte_size ;
 int DW_AT_name ;
 int FIXME (char*,int,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int dwarf2_debug_ctx (TYPE_3__*) ;
 int dwarf2_debug_di (TYPE_4__*) ;
 int dwarf2_find_attribute (TYPE_3__*,TYPE_4__*,int ,struct attribute*) ;
 int dwarf2_get_cpp_name (TYPE_3__*,TYPE_4__*,char*) ;
 struct vector* dwarf2_get_di_children (TYPE_3__*,TYPE_4__*) ;
 int dwarf2_parse_array_type (TYPE_3__*,TYPE_4__*) ;
 int dwarf2_parse_const_type (TYPE_3__*,TYPE_4__*) ;
 int dwarf2_parse_enumeration_type (TYPE_3__*,TYPE_4__*) ;
 int dwarf2_parse_subprogram (TYPE_3__*,TYPE_4__*) ;
 int dwarf2_parse_udt_member (TYPE_3__*,TYPE_4__*,struct symt_udt*) ;
 TYPE_5__* symt_new_udt (int ,int ,scalar_t__,int) ;
 scalar_t__ vector_at (struct vector*,unsigned int) ;
 unsigned int vector_length (struct vector*) ;

__attribute__((used)) static struct symt* dwarf2_parse_udt_type(dwarf2_parse_context_t* ctx,
                                          dwarf2_debug_info_t* di,
                                          enum UdtKind udt)
{
    struct attribute name;
    struct attribute size;
    struct vector* children;
    dwarf2_debug_info_t*child;
    unsigned int i;

    if (di->symt) return di->symt;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));


    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name))
        name.u.string = "zz_anon_zz";
    if (!dwarf2_find_attribute(ctx, di, DW_AT_byte_size, &size)) size.u.uvalue = 0;

    di->symt = &symt_new_udt(ctx->module, dwarf2_get_cpp_name(ctx, di, name.u.string),
                             size.u.uvalue, udt)->symt;

    children = dwarf2_get_di_children(ctx, di);
    if (children) for (i = 0; i < vector_length(children); i++)
    {
        child = *(dwarf2_debug_info_t**)vector_at(children, i);

        switch (child->abbrev->tag)
        {
        case 142:
            dwarf2_parse_array_type(ctx, di);
            break;
        case 136:

            dwarf2_parse_udt_member(ctx, child, (struct symt_udt*)di->symt);
            break;
        case 139:
            dwarf2_parse_enumeration_type(ctx, child);
            break;
        case 133:
            dwarf2_parse_subprogram(ctx, child);
            break;
        case 140:
            dwarf2_parse_const_type(ctx, child);
            break;
        case 134:
        case 141:
        case 129:
        case 130:

        case 137:
        case 132:
        case 131:
        case 128:
        case 138:
        case 135:
        case 143:
        case 144:

            break;
        default:
            FIXME("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));
            break;
        }
    }

    return di->symt;
}
