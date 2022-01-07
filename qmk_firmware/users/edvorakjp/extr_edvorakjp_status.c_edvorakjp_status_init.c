
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int japanese_mode; } ;


 TYPE_2__ edvorakjp_config ;
 TYPE_1__ edvorakjp_state ;
 int eeconfig_read_edvorakjp () ;

void edvorakjp_status_init(void) {
  edvorakjp_state.japanese_mode = 0;
  edvorakjp_config.raw = eeconfig_read_edvorakjp();
}
