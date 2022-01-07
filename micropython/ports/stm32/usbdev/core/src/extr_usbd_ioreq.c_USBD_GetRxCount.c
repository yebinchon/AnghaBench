
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBD_HandleTypeDef ;


 int USBD_LL_GetRxDataSize (int *,int ) ;

uint16_t USBD_GetRxCount (USBD_HandleTypeDef *pdev , uint8_t ep_addr)
{
  return USBD_LL_GetRxDataSize(pdev, ep_addr);
}
