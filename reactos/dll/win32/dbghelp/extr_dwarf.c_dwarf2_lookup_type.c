
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct symt {int dummy; } ;
struct TYPE_13__ {int uvalue; } ;
struct attribute {TYPE_2__ u; } ;
struct TYPE_14__ {int debug_info_table; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_15__ {struct symt* symt; TYPE_1__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_12__ {int tag; } ;


 int DW_AT_type ;
 int FIXME (char*,int ) ;
 int dwarf2_find_attribute (TYPE_3__*,TYPE_4__ const*,int ,struct attribute*) ;
 int dwarf2_load_one_entry (TYPE_3__*,TYPE_4__*) ;
 TYPE_4__* sparse_array_find (int *,int ) ;

__attribute__((used)) static struct symt* dwarf2_lookup_type(dwarf2_parse_context_t* ctx,
                                       const dwarf2_debug_info_t* di)
{
    struct attribute attr;
    dwarf2_debug_info_t* type;

    if (!dwarf2_find_attribute(ctx, di, DW_AT_type, &attr))
        return ((void*)0);
    if (!(type = sparse_array_find(&ctx->debug_info_table, attr.u.uvalue)))
    {
        FIXME("Unable to find back reference to type %lx\n", attr.u.uvalue);
        return ((void*)0);
    }
    if (!type->symt)
    {

        dwarf2_load_one_entry(ctx, type);
        if (!type->symt)
            FIXME("Unable to load forward reference for tag %lx\n", type->abbrev->tag);
    }
    return type->symt;
}
