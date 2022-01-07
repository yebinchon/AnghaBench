
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nInUse; int owner; } ;
typedef TYPE_1__ DSL_DEV_Device_t ;


 int BSP_MAX_DEVICES ;
 TYPE_1__* dsl_devices ;
 int try_module_get (int ) ;

DSL_DEV_Device_t *
DSL_BSP_DriverHandleGet (int maj, int num)
{
 DSL_DEV_Device_t *pDev;

 if (num > BSP_MAX_DEVICES)
  return ((void*)0);

 pDev = &dsl_devices[num];
 if (!try_module_get(pDev->owner))
  return ((void*)0);

 pDev->nInUse++;
 return pDev;
}
