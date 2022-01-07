
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; scalar_t__ nInUse; } ;
typedef TYPE_1__ DSL_DEV_Device_t ;


 int module_put (int ) ;

int
DSL_BSP_DriverHandleDelete (DSL_DEV_Device_t * nHandle)
{
 DSL_DEV_Device_t *pDev = (DSL_DEV_Device_t *) nHandle;
 if (pDev->nInUse)
  pDev->nInUse--;
        module_put(pDev->owner);
 return 0;
}
