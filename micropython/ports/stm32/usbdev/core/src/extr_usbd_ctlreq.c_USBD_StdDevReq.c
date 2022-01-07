
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int USBD_StatusTypeDef ;
struct TYPE_11__ {int bRequest; } ;
typedef TYPE_1__ USBD_SetupReqTypedef ;
typedef int USBD_HandleTypeDef ;


 int USBD_ClrFeature (int *,TYPE_1__*) ;
 int USBD_CtlError (int *,TYPE_1__*) ;
 int USBD_GetConfig (int *,TYPE_1__*) ;
 int USBD_GetDescriptor (int *,TYPE_1__*) ;
 int USBD_GetStatus (int *,TYPE_1__*) ;
 int USBD_OK ;
 int USBD_SetAddress (int *,TYPE_1__*) ;
 int USBD_SetConfig (int *,TYPE_1__*) ;
 int USBD_SetFeature (int *,TYPE_1__*) ;
USBD_StatusTypeDef USBD_StdDevReq (USBD_HandleTypeDef *pdev , USBD_SetupReqTypedef *req)
{
  USBD_StatusTypeDef ret = USBD_OK;

  switch (req->bRequest)
  {
  case 132:

    USBD_GetDescriptor (pdev, req) ;
    break;

  case 130:
    USBD_SetAddress(pdev, req);
    break;

  case 129:
    USBD_SetConfig (pdev , req);
    break;

  case 133:
    USBD_GetConfig (pdev , req);
    break;

  case 131:
    USBD_GetStatus (pdev , req);
    break;


  case 128:
    USBD_SetFeature (pdev , req);
    break;

  case 134:
    USBD_ClrFeature (pdev , req);
    break;

  default:
    USBD_CtlError(pdev , req);
    break;
  }

  return ret;
}
