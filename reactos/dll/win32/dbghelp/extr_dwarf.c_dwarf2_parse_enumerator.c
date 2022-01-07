
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct symt_enum {int dummy; } ;
struct TYPE_7__ {scalar_t__ svalue; int string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_8__ {int module; } ;
typedef TYPE_2__ dwarf2_parse_context_t ;
typedef int dwarf2_debug_info_t ;


 int DW_AT_const_value ;
 int DW_AT_name ;
 int FIXME (char*) ;
 int TRACE (char*,int ,int ) ;
 int dwarf2_debug_ctx (TYPE_2__*) ;
 int dwarf2_debug_di (int *) ;
 int dwarf2_find_attribute (TYPE_2__*,int *,int ,struct attribute*) ;
 scalar_t__ dwarf2_get_di_children (TYPE_2__*,int *) ;
 int symt_add_enum_element (int ,struct symt_enum*,int ,scalar_t__) ;

__attribute__((used)) static void dwarf2_parse_enumerator(dwarf2_parse_context_t* ctx,
                                    dwarf2_debug_info_t* di,
                                    struct symt_enum* parent)
{
    struct attribute name;
    struct attribute value;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name)) return;
    if (!dwarf2_find_attribute(ctx, di, DW_AT_const_value, &value)) value.u.svalue = 0;
    symt_add_enum_element(ctx->module, parent, name.u.string, value.u.svalue);

    if (dwarf2_get_di_children(ctx, di)) FIXME("Unsupported children\n");
}
