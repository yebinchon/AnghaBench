
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLUE_LED ;
 int GREEN_LED ;
 int RED_LED ;
 int writePinLow (int ) ;

void turn_off_leds(void)
{
    writePinLow(RED_LED);
    writePinLow(BLUE_LED);
    writePinLow(GREEN_LED);
}
