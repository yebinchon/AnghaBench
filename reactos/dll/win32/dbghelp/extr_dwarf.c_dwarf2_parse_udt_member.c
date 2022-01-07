
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct symt_udt {int dummy; } ;
struct symt {int dummy; } ;
struct location {scalar_t__ kind; int offset; } ;
struct TYPE_9__ {unsigned long uvalue; int * string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_10__ {int module; } ;
typedef TYPE_2__ dwarf2_parse_context_t ;
typedef int dwarf2_debug_info_t ;
typedef scalar_t__ DWORD64 ;


 int DW_AT_bit_offset ;
 int DW_AT_bit_size ;
 int DW_AT_byte_size ;
 int DW_AT_data_member_location ;
 int DW_AT_name ;
 int FIXME (char*) ;
 int TI_GET_LENGTH ;
 int TRACE (char*,int ,int) ;
 int assert (struct symt_udt*) ;
 scalar_t__ dwarf2_compute_location_attr (TYPE_2__*,int *,int ,struct location*,int *) ;
 int dwarf2_debug_ctx (TYPE_2__*) ;
 int dwarf2_debug_di (int *) ;
 scalar_t__ dwarf2_find_attribute (TYPE_2__*,int *,int ,struct attribute*) ;
 scalar_t__ dwarf2_get_di_children (TYPE_2__*,int *) ;
 struct symt* dwarf2_lookup_type (TYPE_2__*,int *) ;
 scalar_t__ loc_absolute ;
 int symt_add_udt_element (int ,struct symt_udt*,int *,struct symt*,int,int) ;
 scalar_t__ symt_get_info (int ,struct symt*,int ,scalar_t__*) ;

__attribute__((used)) static void dwarf2_parse_udt_member(dwarf2_parse_context_t* ctx,
                                    dwarf2_debug_info_t* di,
                                    struct symt_udt* parent)
{
    struct symt* elt_type;
    struct attribute name;
    struct attribute bit_size;
    struct attribute bit_offset;
    struct location loc;

    assert(parent);

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name)) name.u.string = ((void*)0);
    elt_type = dwarf2_lookup_type(ctx, di);
    if (dwarf2_compute_location_attr(ctx, di, DW_AT_data_member_location, &loc, ((void*)0)))
    {
        if (loc.kind != loc_absolute)
        {
           FIXME("Found register, while not expecting it\n");
           loc.offset = 0;
        }
        else
            TRACE("found member_location at %s -> %lu\n",
                  dwarf2_debug_ctx(ctx), loc.offset);
    }
    else
        loc.offset = 0;
    if (!dwarf2_find_attribute(ctx, di, DW_AT_bit_size, &bit_size))
        bit_size.u.uvalue = 0;
    if (dwarf2_find_attribute(ctx, di, DW_AT_bit_offset, &bit_offset))
    {



        struct attribute nbytes;
        if (!dwarf2_find_attribute(ctx, di, DW_AT_byte_size, &nbytes))
        {
            DWORD64 size;
            nbytes.u.uvalue = symt_get_info(ctx->module, elt_type, TI_GET_LENGTH, &size) ?
                (unsigned long)size : 0;
        }
        bit_offset.u.uvalue = nbytes.u.uvalue * 8 - bit_offset.u.uvalue - bit_size.u.uvalue;
    }
    else bit_offset.u.uvalue = 0;
    symt_add_udt_element(ctx->module, parent, name.u.string, elt_type,
                         (loc.offset << 3) + bit_offset.u.uvalue,
                         bit_size.u.uvalue);

    if (dwarf2_get_di_children(ctx, di)) FIXME("Unsupported children\n");
}
