
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ wValue; } ;
typedef TYPE_2__ USBD_SetupReqTypedef ;
struct TYPE_11__ {int dev_remote_wakeup; TYPE_1__* pClass; } ;
typedef TYPE_3__ USBD_HandleTypeDef ;
struct TYPE_9__ {int (* Setup ) (TYPE_3__*,TYPE_2__*) ;} ;


 int USBD_CtlSendStatus (TYPE_3__*) ;
 scalar_t__ USB_FEATURE_REMOTE_WAKEUP ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void USBD_SetFeature(USBD_HandleTypeDef *pdev ,
                            USBD_SetupReqTypedef *req)
{

  if (req->wValue == USB_FEATURE_REMOTE_WAKEUP)
  {
    pdev->dev_remote_wakeup = 1;
    pdev->pClass->Setup (pdev, req);
    USBD_CtlSendStatus(pdev);
  }

}
