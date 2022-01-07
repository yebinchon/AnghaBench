
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_APP_LED ;
 int LEDS_CONFIGURE (int ) ;
 int LEDS_OFF (int ) ;

__attribute__((used)) static void leds_init(void)
{

  LEDS_CONFIGURE(ALL_APP_LED);


  LEDS_OFF(ALL_APP_LED);
}
