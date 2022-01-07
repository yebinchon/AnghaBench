
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * nIrq; } ;
typedef TYPE_1__ DSL_DEV_Device_t ;


 int EIO ;
 size_t IFX_DFEIR ;
 size_t IFX_DYING_GASP ;
 int disable_irq (int ) ;
 TYPE_1__* dsl_devices ;
 int free_irq (int ,TYPE_1__*) ;

__attribute__((used)) static int
IFX_MEI_ExitDevice (int num)
{
 DSL_DEV_Device_t *pDev;
 pDev = &dsl_devices[num];

 if (pDev == ((void*)0))
  return -EIO;

 disable_irq (pDev->nIrq[IFX_DFEIR]);
 disable_irq (pDev->nIrq[IFX_DYING_GASP]);

 free_irq(pDev->nIrq[IFX_DFEIR], pDev);
 free_irq(pDev->nIrq[IFX_DYING_GASP], pDev);

 return 0;
}
