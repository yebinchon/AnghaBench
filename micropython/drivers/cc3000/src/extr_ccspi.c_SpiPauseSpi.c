
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin; } ;


 int DEBUG_printf (char*) ;
 TYPE_1__* PIN_IRQ ;
 int extint_disable (int ) ;

void SpiPauseSpi(void) {
    DEBUG_printf("SpiPauseSpi\n");
    extint_disable(PIN_IRQ->pin);
}
