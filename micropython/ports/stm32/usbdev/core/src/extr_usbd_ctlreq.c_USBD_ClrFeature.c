
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int wValue; } ;
typedef TYPE_2__ USBD_SetupReqTypedef ;
struct TYPE_13__ {int dev_state; TYPE_1__* pClass; int dev_remote_wakeup; } ;
typedef TYPE_3__ USBD_HandleTypeDef ;
struct TYPE_11__ {int (* Setup ) (TYPE_3__*,TYPE_2__*) ;} ;


 int USBD_CtlError (TYPE_3__*,TYPE_2__*) ;
 int USBD_CtlSendStatus (TYPE_3__*) ;


 int USB_FEATURE_REMOTE_WAKEUP ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void USBD_ClrFeature(USBD_HandleTypeDef *pdev ,
                            USBD_SetupReqTypedef *req)
{
  switch (pdev->dev_state)
  {
  case 129:
  case 128:
    if (req->wValue == USB_FEATURE_REMOTE_WAKEUP)
    {
      pdev->dev_remote_wakeup = 0;
      pdev->pClass->Setup (pdev, req);
      USBD_CtlSendStatus(pdev);
    }
    break;

  default :
     USBD_CtlError(pdev , req);
    break;
  }
}
