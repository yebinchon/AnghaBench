
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
typedef int USBD_StatusTypeDef ;
struct TYPE_6__ {TYPE_1__* ep_in; int ep0_state; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;
struct TYPE_5__ {void* rem_length; void* total_length; } ;


 int USBD_EP0_DATA_IN ;
 int USBD_LL_Transmit (TYPE_2__*,int,int *,void*) ;
 int USBD_OK ;

USBD_StatusTypeDef USBD_CtlSendData (USBD_HandleTypeDef *pdev,
                               uint8_t *pbuf,
                               uint16_t len)
{

  pdev->ep0_state = USBD_EP0_DATA_IN;
  pdev->ep_in[0].total_length = len;
  pdev->ep_in[0].rem_length = len;

  USBD_LL_Transmit (pdev, 0x00, pbuf, len);

  return USBD_OK;
}
