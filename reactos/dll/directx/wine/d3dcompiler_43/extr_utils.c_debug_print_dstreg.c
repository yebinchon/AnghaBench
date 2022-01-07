
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int writemask; } ;
struct shader_reg {TYPE_1__ u; } ;


 int debug_print_relarg (struct shader_reg const*) ;
 int debug_print_writemask (int ) ;
 int get_regname (struct shader_reg const*) ;
 char const* wine_dbg_sprintf (char*,int ,int ,int ) ;

const char *debug_print_dstreg(const struct shader_reg *reg)
{
    return wine_dbg_sprintf("%s%s%s", get_regname(reg),
            debug_print_relarg(reg),
            debug_print_writemask(reg->u.writemask));
}
