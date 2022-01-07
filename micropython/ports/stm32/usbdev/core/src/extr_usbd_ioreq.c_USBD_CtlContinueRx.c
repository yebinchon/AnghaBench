
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBD_StatusTypeDef ;
typedef int USBD_HandleTypeDef ;


 int USBD_LL_PrepareReceive (int *,int ,int *,int ) ;
 int USBD_OK ;

USBD_StatusTypeDef USBD_CtlContinueRx (USBD_HandleTypeDef *pdev,
                                          uint8_t *pbuf,
                                          uint16_t len)
{

  USBD_LL_PrepareReceive (pdev,
                          0,
                          pbuf,
                          len);
  return USBD_OK;
}
