
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_mods () ;
 int get_oneshot_mods () ;
 int set_rgb_indicators (int ,int ) ;

void matrix_scan_rgb(void) {
  set_rgb_indicators(get_mods(), get_oneshot_mods());
}
