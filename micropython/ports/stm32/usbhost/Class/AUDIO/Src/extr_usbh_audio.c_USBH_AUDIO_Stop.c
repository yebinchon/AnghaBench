
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USBH_StatusTypeDef ;
typedef int USBH_HandleTypeDef ;


 int USBH_AUDIO_Suspend (int *) ;
 int USBH_FAIL ;

USBH_StatusTypeDef USBH_AUDIO_Stop (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef Status = USBH_FAIL;
  Status = USBH_AUDIO_Suspend(phost);
  return Status;
}
