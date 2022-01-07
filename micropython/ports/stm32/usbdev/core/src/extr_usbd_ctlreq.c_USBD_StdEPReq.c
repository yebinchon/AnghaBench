
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBD_StatusTypeDef ;
struct TYPE_19__ {int bRequest; int wValue; int wIndex; } ;
typedef TYPE_2__ USBD_SetupReqTypedef ;
struct TYPE_20__ {TYPE_4__* ep_out; TYPE_4__* ep_in; int dev_state; TYPE_1__* pClass; } ;
typedef TYPE_3__ USBD_HandleTypeDef ;
struct TYPE_21__ {int status; } ;
typedef TYPE_4__ USBD_EndpointTypeDef ;
struct TYPE_18__ {int (* Setup ) (TYPE_3__*,TYPE_2__*) ;} ;


 int LOBYTE (int ) ;
 int USBD_CtlError (TYPE_3__*,TYPE_2__*) ;
 int USBD_CtlSendData (TYPE_3__*,int*,int) ;
 int USBD_CtlSendStatus (TYPE_3__*) ;
 int USBD_LL_ClearStallEP (TYPE_3__*,int) ;
 int USBD_LL_IsStallEP (TYPE_3__*,int) ;
 int USBD_LL_StallEP (TYPE_3__*,int) ;
 int USBD_OK ;


 int USB_FEATURE_EP_HALT ;



 int stub1 (TYPE_3__*,TYPE_2__*) ;
 int stub2 (TYPE_3__*,TYPE_2__*) ;

USBD_StatusTypeDef USBD_StdEPReq (USBD_HandleTypeDef *pdev , USBD_SetupReqTypedef *req)
{

  uint8_t ep_addr;
  USBD_StatusTypeDef ret = USBD_OK;
  USBD_EndpointTypeDef *pep;
  ep_addr = LOBYTE(req->wIndex);

  switch (req->bRequest)
  {

  case 128 :

    switch (pdev->dev_state)
    {
    case 132:
      if ((ep_addr != 0x00) && (ep_addr != 0x80))
      {
        USBD_LL_StallEP(pdev , ep_addr);
      }
      break;

    case 131:
      if (req->wValue == USB_FEATURE_EP_HALT)
      {
        if ((ep_addr != 0x00) && (ep_addr != 0x80))
        {
          USBD_LL_StallEP(pdev , ep_addr);

        }
      }
      pdev->pClass->Setup (pdev, req);
      USBD_CtlSendStatus(pdev);

      break;

    default:
      USBD_CtlError(pdev , req);
      break;
    }
    break;

  case 130 :

    switch (pdev->dev_state)
    {
    case 132:
      if ((ep_addr != 0x00) && (ep_addr != 0x80))
      {
        USBD_LL_StallEP(pdev , ep_addr);
      }
      break;

    case 131:
      if (req->wValue == USB_FEATURE_EP_HALT)
      {
        if ((ep_addr & 0x7F) != 0x00)
        {
          USBD_LL_ClearStallEP(pdev , ep_addr);
          pdev->pClass->Setup (pdev, req);
        }
        USBD_CtlSendStatus(pdev);
      }
      break;

    default:
      USBD_CtlError(pdev , req);
      break;
    }
    break;

  case 129:
    switch (pdev->dev_state)
    {
    case 132:
      if ((ep_addr & 0x7F) != 0x00)
      {
        USBD_LL_StallEP(pdev , ep_addr);
      }
      break;

    case 131:
      pep = ((ep_addr & 0x80) == 0x80) ? &pdev->ep_in[ep_addr & 0x7F]: &pdev->ep_out[ep_addr & 0x7F];

      if(USBD_LL_IsStallEP(pdev, ep_addr))
      {
        pep->status = 0x0001;
      }
      else
      {
        pep->status = 0x0000;
      }

      USBD_CtlSendData (pdev,
                        (uint8_t *)&pep->status,
                        2);
      break;

    default:
      USBD_CtlError(pdev , req);
      break;
    }
    break;

  default:
    break;
  }
  return ret;
}
