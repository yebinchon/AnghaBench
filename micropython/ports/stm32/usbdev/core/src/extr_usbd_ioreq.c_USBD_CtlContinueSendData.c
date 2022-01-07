
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBD_StatusTypeDef ;
typedef int USBD_HandleTypeDef ;


 int USBD_LL_Transmit (int *,int,int *,int ) ;
 int USBD_OK ;

USBD_StatusTypeDef USBD_CtlContinueSendData (USBD_HandleTypeDef *pdev,
                                       uint8_t *pbuf,
                                       uint16_t len)
{

  USBD_LL_Transmit (pdev, 0x00, pbuf, len);

  return USBD_OK;
}
