
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_10__ {scalar_t__ wValue; } ;
typedef TYPE_1__ USBD_SetupReqTypedef ;
struct TYPE_11__ {int dev_state; scalar_t__ dev_config; } ;
typedef TYPE_2__ USBD_HandleTypeDef ;


 int USBD_ClrClassConfig (TYPE_2__*,scalar_t__) ;
 int USBD_CtlError (TYPE_2__*,TYPE_1__*) ;
 int USBD_CtlSendStatus (TYPE_2__*) ;
 int USBD_FAIL ;
 scalar_t__ USBD_MAX_NUM_CONFIGURATION ;


 int USBD_SetClassConfig (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void USBD_SetConfig(USBD_HandleTypeDef *pdev ,
                           USBD_SetupReqTypedef *req)
{

  uint8_t cfgidx;

  cfgidx = (uint8_t)(req->wValue);

  if (cfgidx > USBD_MAX_NUM_CONFIGURATION )
  {
     USBD_CtlError(pdev , req);
  }
  else
  {
    switch (pdev->dev_state)
    {
    case 129:
      if (cfgidx)
      {
        pdev->dev_config = cfgidx;
        pdev->dev_state = 128;
        if(USBD_SetClassConfig(pdev , cfgidx) == USBD_FAIL)
        {
          USBD_CtlError(pdev , req);
          return;
        }
        USBD_CtlSendStatus(pdev);
      }
      else
      {
         USBD_CtlSendStatus(pdev);
      }
      break;

    case 128:
      if (cfgidx == 0)
      {
        pdev->dev_state = 129;
        pdev->dev_config = cfgidx;
        USBD_ClrClassConfig(pdev , cfgidx);
        USBD_CtlSendStatus(pdev);

      }
      else if (cfgidx != pdev->dev_config)
      {

        USBD_ClrClassConfig(pdev , pdev->dev_config);


        pdev->dev_config = cfgidx;
        if(USBD_SetClassConfig(pdev , cfgidx) == USBD_FAIL)
        {
          USBD_CtlError(pdev , req);
          return;
        }
        USBD_CtlSendStatus(pdev);
      }
      else
      {
        USBD_CtlSendStatus(pdev);
      }
      break;

    default:
       USBD_CtlError(pdev , req);
      break;
    }
  }
}
