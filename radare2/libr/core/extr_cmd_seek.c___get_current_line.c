
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offset; TYPE_1__* print; } ;
struct TYPE_4__ {scalar_t__ lines_cache_sz; int lines_cache; } ;
typedef TYPE_2__ RCore ;


 int r_cons_printf (char*,int) ;
 int r_util_lines_getline (int ,scalar_t__,int ) ;

__attribute__((used)) static void __get_current_line(RCore *core) {
 if (core->print->lines_cache_sz > 0) {
  int curr = r_util_lines_getline (core->print->lines_cache, core->print->lines_cache_sz, core->offset);
  r_cons_printf ("%d\n", curr);
 }
}
