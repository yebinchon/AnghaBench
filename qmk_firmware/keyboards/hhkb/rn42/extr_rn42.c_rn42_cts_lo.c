
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTD ;

void rn42_cts_lo(void)
{

    PORTD &= ~(1<<5);
}
