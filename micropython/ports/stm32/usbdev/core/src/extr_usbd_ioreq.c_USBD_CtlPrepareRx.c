
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
typedef int USBD_StatusTypeDef ;
struct TYPE_6__ {TYPE_1__* ep_out; int ep0_state; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;
struct TYPE_5__ {void* rem_length; void* total_length; } ;


 int USBD_EP0_DATA_OUT ;
 int USBD_LL_PrepareReceive (TYPE_2__*,int ,int *,void*) ;
 int USBD_OK ;

USBD_StatusTypeDef USBD_CtlPrepareRx (USBD_HandleTypeDef *pdev,
                                  uint8_t *pbuf,
                                  uint16_t len)
{

  pdev->ep0_state = USBD_EP0_DATA_OUT;
  pdev->ep_out[0].total_length = len;
  pdev->ep_out[0].rem_length = len;

  USBD_LL_PrepareReceive (pdev,
                          0,
                          pbuf,
                         len);

  return USBD_OK;
}
