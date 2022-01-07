
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* module; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_6__ {int ModuleName; } ;
struct TYPE_7__ {TYPE_1__ module; } ;


 int debugstr_w (int ) ;
 char const* wine_dbg_sprintf (char*,TYPE_3__ const*,int ) ;

__attribute__((used)) static const char* dwarf2_debug_ctx(const dwarf2_parse_context_t* ctx)
{
    return wine_dbg_sprintf("ctx(%p,%s)",
                            ctx, debugstr_w(ctx->module->module.ModuleName));
}
