
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_12__ {int wLength; int wIndex; } ;
typedef TYPE_2__ USBD_SetupReqTypedef ;
struct TYPE_13__ {int dev_state; TYPE_1__* pClass; } ;
typedef TYPE_3__ USBD_HandleTypeDef ;
struct TYPE_11__ {int (* Setup ) (TYPE_3__*,TYPE_2__*) ;} ;


 int LOBYTE (int ) ;
 int USBD_CtlError (TYPE_3__*,TYPE_2__*) ;
 int USBD_CtlSendStatus (TYPE_3__*) ;
 int USBD_MAX_NUM_INTERFACES ;
 int USBD_OK ;

 int stub1 (TYPE_3__*,TYPE_2__*) ;

USBD_StatusTypeDef USBD_StdItfReq (USBD_HandleTypeDef *pdev , USBD_SetupReqTypedef *req)
{
  USBD_StatusTypeDef ret = USBD_OK;

  switch (pdev->dev_state)
  {
  case 128:

    if (LOBYTE(req->wIndex) <= USBD_MAX_NUM_INTERFACES)
    {
      pdev->pClass->Setup (pdev, req);

      if((req->wLength == 0)&& (ret == USBD_OK))
      {
         USBD_CtlSendStatus(pdev);
      }
    }
    else
    {
       USBD_CtlError(pdev , req);
    }
    break;

  default:
     USBD_CtlError(pdev , req);
    break;
  }
  return USBD_OK;
}
