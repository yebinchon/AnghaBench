
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ PLLPRE; scalar_t__ PLLPOST; } ;
struct TYPE_3__ {int COSC; int LOCK; } ;


 TYPE_2__ CLKDIVbits ;
 TYPE_1__ OSCCONbits ;
 scalar_t__ OSCTUN ;
 int PLLFBD ;
 int __builtin_write_OSCCONH (int) ;
 int __builtin_write_OSCCONL (int) ;

void cpu_init(void) {



    PLLFBD = 41;
    CLKDIVbits.PLLPOST = 0;
    CLKDIVbits.PLLPRE = 0;
    OSCTUN = 0;


    __builtin_write_OSCCONH(0x01);
    __builtin_write_OSCCONL(0x01);


    while (OSCCONbits.COSC != 0x01) {
    }
    while (!OSCCONbits.LOCK) {
    }
}
