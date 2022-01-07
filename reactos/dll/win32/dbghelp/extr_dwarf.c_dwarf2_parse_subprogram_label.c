
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct location {scalar_t__ offset; int kind; } ;
struct TYPE_6__ {int * string; scalar_t__ uvalue; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_7__ {int func; TYPE_4__* ctx; } ;
typedef TYPE_2__ dwarf2_subprogram_t ;
typedef int dwarf2_debug_info_t ;
struct TYPE_8__ {int module; scalar_t__ load_offset; } ;


 int DW_AT_low_pc ;
 int DW_AT_name ;
 int SymTagLabel ;
 int TRACE (char*,int ,int ) ;
 int dwarf2_debug_ctx (TYPE_4__*) ;
 int dwarf2_debug_di (int const*) ;
 int dwarf2_find_attribute (TYPE_4__*,int const*,int ,struct attribute*) ;
 int loc_absolute ;
 int symt_add_function_point (int ,int ,int ,struct location*,int *) ;

__attribute__((used)) static void dwarf2_parse_subprogram_label(dwarf2_subprogram_t* subpgm,
                                          const dwarf2_debug_info_t* di)
{
    struct attribute name;
    struct attribute low_pc;
    struct location loc;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(subpgm->ctx), dwarf2_debug_di(di));

    if (!dwarf2_find_attribute(subpgm->ctx, di, DW_AT_low_pc, &low_pc)) low_pc.u.uvalue = 0;
    if (!dwarf2_find_attribute(subpgm->ctx, di, DW_AT_name, &name))
        name.u.string = ((void*)0);

    loc.kind = loc_absolute;
    loc.offset = subpgm->ctx->load_offset + low_pc.u.uvalue;
    symt_add_function_point(subpgm->ctx->module, subpgm->func, SymTagLabel,
                            &loc, name.u.string);
}
