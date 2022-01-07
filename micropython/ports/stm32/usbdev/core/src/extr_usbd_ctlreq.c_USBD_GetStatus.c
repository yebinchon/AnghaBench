
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBD_SetupReqTypedef ;
struct TYPE_5__ {int dev_state; int dev_config_status; int dev_remote_wakeup; } ;
typedef TYPE_1__ USBD_HandleTypeDef ;


 int USBD_CtlError (TYPE_1__*,int *) ;
 int USBD_CtlSendData (TYPE_1__*,int *,int) ;


 int USB_CONFIG_REMOTE_WAKEUP ;
 int USB_CONFIG_SELF_POWERED ;

__attribute__((used)) static void USBD_GetStatus(USBD_HandleTypeDef *pdev ,
                           USBD_SetupReqTypedef *req)
{


  switch (pdev->dev_state)
  {
  case 129:
  case 128:




    pdev->dev_config_status = 0;


    if (pdev->dev_remote_wakeup)
    {
       pdev->dev_config_status |= USB_CONFIG_REMOTE_WAKEUP;
    }

    USBD_CtlSendData (pdev,
                      (uint8_t *)& pdev->dev_config_status,
                      2);
    break;

  default :
    USBD_CtlError(pdev , req);
    break;
  }
}
