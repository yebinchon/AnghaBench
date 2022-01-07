
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SM; int NDC; int ENDI; scalar_t__ ARS; } ;
struct des_t {TYPE_1__ controlr; } ;


 scalar_t__ DES_3DES_START ;

void des_chip_init (void)
{
    volatile struct des_t *des = (struct des_t *) DES_3DES_START;


    des->controlr.SM = 1;
    des->controlr.NDC = 1;
    asm("sync");
    des->controlr.ENDI = 1;
    asm("sync");
    des->controlr.ARS = 0;

}
