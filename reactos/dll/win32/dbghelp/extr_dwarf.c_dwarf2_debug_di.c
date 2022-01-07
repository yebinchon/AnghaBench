
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int symt; int abbrev; } ;
typedef TYPE_1__ dwarf2_debug_info_t ;


 char const* wine_dbg_sprintf (char*,int ,int ) ;

__attribute__((used)) static const char* dwarf2_debug_di(const dwarf2_debug_info_t* di)
{
    return wine_dbg_sprintf("debug_info(abbrev:%p,symt:%p)",
                            di->abbrev, di->symt);
}
