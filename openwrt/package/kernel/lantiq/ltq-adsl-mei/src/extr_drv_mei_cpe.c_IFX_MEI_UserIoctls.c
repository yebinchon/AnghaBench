
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSL_DRV_file_t ;
typedef int DSL_DEV_Device_t ;


 long EIO ;
 int * IFX_BSP_HandleGet (int ,int ) ;
 int IFX_MEI_Ioctls (int *,int ,unsigned int,unsigned long) ;

__attribute__((used)) static long
IFX_MEI_UserIoctls (DSL_DRV_file_t * fil,
     unsigned int command, unsigned long lon)
{
 int error = 0;
 DSL_DEV_Device_t *pDev;

 pDev = IFX_BSP_HandleGet (0, 0);
 if (pDev == ((void*)0))
  return -EIO;

 error = IFX_MEI_Ioctls (pDev, 0, command, lon);
 return error;
}
