
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBD_StatusTypeDef ;
struct TYPE_12__ {int bmRequest; int wLength; } ;
struct TYPE_11__ {TYPE_3__ request; int ep0_data_len; int ep0_state; } ;
typedef TYPE_1__ USBD_HandleTypeDef ;


 int USBD_EP0_SETUP ;
 int USBD_LL_StallEP (TYPE_1__*,int) ;
 int USBD_OK ;
 int USBD_ParseSetupRequest (TYPE_3__*,int *) ;
 int USBD_StdDevReq (TYPE_1__*,TYPE_3__*) ;
 int USBD_StdEPReq (TYPE_1__*,TYPE_3__*) ;
 int USBD_StdItfReq (TYPE_1__*,TYPE_3__*) ;




USBD_StatusTypeDef USBD_LL_SetupStage(USBD_HandleTypeDef *pdev, uint8_t *psetup)
{

  USBD_ParseSetupRequest(&pdev->request, psetup);

  pdev->ep0_state = USBD_EP0_SETUP;
  pdev->ep0_data_len = pdev->request.wLength;

  switch (pdev->request.bmRequest & 0x1F)
  {
  case 130:
    USBD_StdDevReq (pdev, &pdev->request);
    break;

  case 128:
    USBD_StdItfReq(pdev, &pdev->request);
    break;

  case 129:
    USBD_StdEPReq(pdev, &pdev->request);
    break;

  default:
    USBD_LL_StallEP(pdev , pdev->request.bmRequest & 0x80);
    break;
  }
  return USBD_OK;
}
