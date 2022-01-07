
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_3__ {int* Pipes; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;


 int USBH_OK ;

USBH_StatusTypeDef USBH_FreePipe (USBH_HandleTypeDef *phost, uint8_t idx)
{
   if(idx < 11)
   {
  phost->Pipes[idx] &= 0x7FFF;
   }
   return USBH_OK;
}
