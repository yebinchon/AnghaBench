
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shader_reg {TYPE_2__* rel_reg; } ;
struct TYPE_3__ {int swizzle; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ regnum; TYPE_1__ u; } ;


 scalar_t__ BWRITERSPR_ADDR ;
 scalar_t__ BWRITERSPR_LOOP ;
 char* debug_print_swizzle (int ) ;
 char const* wine_dbg_sprintf (char*,char const*,...) ;

__attribute__((used)) static const char *debug_print_relarg(const struct shader_reg *reg)
{
    const char *short_swizzle;
    if (!reg->rel_reg) return "";

    short_swizzle = debug_print_swizzle(reg->rel_reg->u.swizzle);

    if (reg->rel_reg->type == BWRITERSPR_ADDR)
        return wine_dbg_sprintf("[a%u%s]", reg->rel_reg->regnum, short_swizzle);
    else if(reg->rel_reg->type == BWRITERSPR_LOOP && reg->rel_reg->regnum == 0)
        return wine_dbg_sprintf("[aL%s]", short_swizzle);
    else
        return "Unexpected relative addressing argument";
}
