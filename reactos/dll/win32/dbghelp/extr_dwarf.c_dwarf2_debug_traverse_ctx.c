
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ dwarf2_traverse_context_t ;


 char const* wine_dbg_sprintf (char*,int ) ;

__attribute__((used)) static const char* dwarf2_debug_traverse_ctx(const dwarf2_traverse_context_t* ctx)
{
    return wine_dbg_sprintf("ctx(%p)", ctx->data);
}
