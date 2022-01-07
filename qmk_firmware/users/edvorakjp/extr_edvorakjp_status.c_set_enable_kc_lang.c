
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable_kc_lang; int raw; } ;


 TYPE_1__ edvorakjp_config ;
 int eeconfig_update_edvorakjp (int ) ;

void set_enable_kc_lang(bool new_state) {
  edvorakjp_config.enable_kc_lang = new_state;
  eeconfig_update_edvorakjp(edvorakjp_config.raw);
}
