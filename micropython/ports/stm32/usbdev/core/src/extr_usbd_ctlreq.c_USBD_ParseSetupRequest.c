
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bmRequest; } ;
typedef TYPE_1__ USBD_SetupReqTypedef ;


 void* SWAPBYTE (void**) ;

void USBD_ParseSetupRequest(USBD_SetupReqTypedef *req, uint8_t *pdata)
{
  req->bmRequest = *(uint8_t *) (pdata);
  req->bRequest = *(uint8_t *) (pdata + 1);
  req->wValue = SWAPBYTE (pdata + 2);
  req->wIndex = SWAPBYTE (pdata + 4);
  req->wLength = SWAPBYTE (pdata + 6);

}
