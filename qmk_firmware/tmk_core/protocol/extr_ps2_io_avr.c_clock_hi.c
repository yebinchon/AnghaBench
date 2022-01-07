
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS2_CLOCK_BIT ;
 int PS2_CLOCK_DDR ;
 int PS2_CLOCK_PORT ;

void clock_hi(void) {

    PS2_CLOCK_DDR &= ~(1 << PS2_CLOCK_BIT);
    PS2_CLOCK_PORT |= (1 << PS2_CLOCK_BIT);
}
