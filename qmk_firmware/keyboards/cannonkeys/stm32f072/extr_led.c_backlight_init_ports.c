
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ breathing; int level; scalar_t__ enable; } ;


 int GPIOA ;
 int PAL_MODE_ALTERNATE (int) ;
 int PWMD3 ;
 int backlight_set (int ) ;
 int breathing_enable () ;
 TYPE_1__ kb_backlight_config ;
 int palSetPadMode (int ,int,int ) ;
 int printf (char*) ;
 int pwmCFG ;
 int pwmStart (int *,int *) ;

void backlight_init_ports(void) {
  printf("backlight_init_ports()\n");
  palSetPadMode(GPIOA, 6, PAL_MODE_ALTERNATE(1));
  pwmStart(&PWMD3, &pwmCFG);

  if(kb_backlight_config.enable){
    backlight_set(kb_backlight_config.level);
    if(kb_backlight_config.breathing){
      breathing_enable();
    }
  } else {
    backlight_set(0);
  }

}
