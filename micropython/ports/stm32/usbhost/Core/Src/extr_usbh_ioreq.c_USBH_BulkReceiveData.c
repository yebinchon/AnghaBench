
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
typedef int USBH_HandleTypeDef ;


 int USBH_EP_BULK ;
 int USBH_LL_SubmitURB (int *,int ,int,int ,int ,int *,int ,int ) ;
 int USBH_OK ;
 int USBH_PID_DATA ;

USBH_StatusTypeDef USBH_BulkReceiveData(USBH_HandleTypeDef *phost,
                                uint8_t *buff,
                                uint16_t length,
                                uint8_t pipe_num)
{
  USBH_LL_SubmitURB (phost,
                          pipe_num,
                          1,
                          USBH_EP_BULK,
                          USBH_PID_DATA,
                          buff,
                          length,
                          0);
  return USBH_OK;
}
