
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_rdev; } ;
typedef TYPE_1__ DSL_DRV_inode_t ;
typedef int DSL_DRV_file_t ;
typedef int DSL_DEV_Device_t ;


 int DSL_BSP_DriverHandleDelete (int *) ;
 int EIO ;
 int MINOR (int ) ;
 int * dsl_devices ;

__attribute__((used)) static int
IFX_MEI_Release (DSL_DRV_inode_t * ino, DSL_DRV_file_t * fil)
{

 int num = MINOR (ino->i_rdev);
 DSL_DEV_Device_t *pDev;

 pDev = &dsl_devices[num];
 if (pDev == ((void*)0))
  return -EIO;
 DSL_BSP_DriverHandleDelete (pDev);
 return 0;
}
