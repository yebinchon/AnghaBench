
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int wLength; } ;
typedef TYPE_1__ USBD_SetupReqTypedef ;
struct TYPE_9__ {int dev_state; int dev_config; int dev_default_config; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;


 int USBD_CtlError (TYPE_2__*,TYPE_1__*) ;
 int USBD_CtlSendData (TYPE_2__*,int *,int) ;



__attribute__((used)) static void USBD_GetConfig(USBD_HandleTypeDef *pdev ,
                           USBD_SetupReqTypedef *req)
{

  if (req->wLength != 1)
  {
     USBD_CtlError(pdev , req);
  }
  else
  {
    switch (pdev->dev_state )
    {
    case 129:
      pdev->dev_default_config = 0;
      USBD_CtlSendData (pdev,
                        (uint8_t *)&pdev->dev_default_config,
                        1);
      break;

    case 128:

      USBD_CtlSendData (pdev,
                        (uint8_t *)&pdev->dev_config,
                        1);
      break;

    default:
       USBD_CtlError(pdev , req);
      break;
    }
  }
}
