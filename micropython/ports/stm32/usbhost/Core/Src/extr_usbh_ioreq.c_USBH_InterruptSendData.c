
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
typedef int USBH_HandleTypeDef ;


 int USBH_EP_INTERRUPT ;
 int USBH_LL_SubmitURB (int *,int ,int ,int ,int ,int *,int ,int ) ;
 int USBH_OK ;
 int USBH_PID_DATA ;

USBH_StatusTypeDef USBH_InterruptSendData(USBH_HandleTypeDef *phost,
                                uint8_t *buff,
                                uint8_t length,
                                uint8_t pipe_num)
{
  USBH_LL_SubmitURB (phost,
                          pipe_num,
                          0,
                          USBH_EP_INTERRUPT,
                          USBH_PID_DATA,
                          buff,
                          length,
                          0);

  return USBH_OK;
}
