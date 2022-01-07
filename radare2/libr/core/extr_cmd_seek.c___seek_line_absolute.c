
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* print; } ;
struct TYPE_5__ {int lines_cache_sz; int * lines_cache; } ;
typedef TYPE_2__ RCore ;


 int eprintf (char*,int) ;
 int r_core_seek (TYPE_2__*,int ,int) ;

__attribute__((used)) static void __seek_line_absolute(RCore *core, int numline) {
 if (numline < 1 || numline > core->print->lines_cache_sz - 1) {
  eprintf ("ERROR: Line must be between 1 and %d\n", core->print->lines_cache_sz - 1);
 } else {
  r_core_seek (core, core->print->lines_cache[numline - 1], 1);
 }
}
