
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_4__ {int ep0_state; } ;
typedef TYPE_1__ USBD_HandleTypeDef ;


 int USBD_EP0_STATUS_IN ;
 int USBD_LL_Transmit (TYPE_1__*,int,int *,int ) ;
 int USBD_OK ;

USBD_StatusTypeDef USBD_CtlSendStatus (USBD_HandleTypeDef *pdev)
{


  pdev->ep0_state = USBD_EP0_STATUS_IN;


  USBD_LL_Transmit (pdev, 0x00, ((void*)0), 0);

  return USBD_OK;
}
