
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_11__ {int dev_config; TYPE_1__* pClass; scalar_t__ pClassData; int dev_state; TYPE_3__* ep_in; TYPE_2__* ep_out; } ;
typedef TYPE_4__ USBD_HandleTypeDef ;
struct TYPE_10__ {void* maxpacket; } ;
struct TYPE_9__ {void* maxpacket; } ;
struct TYPE_8__ {int (* DeInit ) (TYPE_4__*,int ) ;} ;


 int USBD_EP_TYPE_CTRL ;
 int USBD_LL_OpenEP (TYPE_4__*,int,int ,void*) ;
 int USBD_OK ;
 int USBD_STATE_DEFAULT ;
 void* USB_MAX_EP0_SIZE ;
 int stub1 (TYPE_4__*,int ) ;

USBD_StatusTypeDef USBD_LL_Reset(USBD_HandleTypeDef *pdev)
{

  USBD_LL_OpenEP(pdev,
              0x00,
              USBD_EP_TYPE_CTRL,
              USB_MAX_EP0_SIZE);

  pdev->ep_out[0].maxpacket = USB_MAX_EP0_SIZE;


  USBD_LL_OpenEP(pdev,
              0x80,
              USBD_EP_TYPE_CTRL,
              USB_MAX_EP0_SIZE);

  pdev->ep_in[0].maxpacket = USB_MAX_EP0_SIZE;

  pdev->dev_state = USBD_STATE_DEFAULT;

  if (pdev->pClassData)
    pdev->pClass->DeInit(pdev, pdev->dev_config);


  return USBD_OK;
}
