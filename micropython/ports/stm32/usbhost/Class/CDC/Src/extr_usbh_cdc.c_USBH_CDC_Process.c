
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_20__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_18__ {int dwDTERate; int bParityType; int bDataBits; int bCharFormat; } ;
struct TYPE_16__ {TYPE_2__ b; } ;
struct TYPE_21__ {int state; TYPE_10__* pUserLineCoding; TYPE_12__ LineCoding; } ;
struct TYPE_19__ {int dwDTERate; int bParityType; int bDataBits; int bCharFormat; } ;
struct TYPE_17__ {TYPE_5__* pData; } ;
struct TYPE_15__ {TYPE_3__ b; } ;
typedef TYPE_5__ CDC_HandleTypeDef ;





 int CDC_ProcessReception (TYPE_4__*) ;
 int CDC_ProcessTransmission (TYPE_4__*) ;


 int GetLineCoding (TYPE_4__*,TYPE_12__*) ;
 int SetLineCoding (TYPE_4__*,TYPE_10__*) ;
 int USBH_BUSY ;
 int USBH_CDC_LineCodingChanged (TYPE_4__*) ;
 int USBH_ClrFeature (TYPE_4__*,int) ;
 int USBH_OK ;

__attribute__((used)) static USBH_StatusTypeDef USBH_CDC_Process (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  USBH_StatusTypeDef req_status = USBH_OK;
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;

  switch(CDC_Handle->state)
  {

  case 130:
    status = USBH_OK;
    break;

  case 129:
    req_status = SetLineCoding(phost, CDC_Handle->pUserLineCoding);

    if(req_status == USBH_OK)
    {
      CDC_Handle->state = 131;
    }

    else if(req_status != USBH_BUSY)
    {
      CDC_Handle->state = 132;
    }
    break;


  case 131:
    req_status = GetLineCoding(phost, &(CDC_Handle->LineCoding));

    if(req_status == USBH_OK)
    {
      CDC_Handle->state = 130;

      if((CDC_Handle->LineCoding.b.bCharFormat == CDC_Handle->pUserLineCoding->b.bCharFormat) &&
         (CDC_Handle->LineCoding.b.bDataBits == CDC_Handle->pUserLineCoding->b.bDataBits) &&
         (CDC_Handle->LineCoding.b.bParityType == CDC_Handle->pUserLineCoding->b.bParityType) &&
         (CDC_Handle->LineCoding.b.dwDTERate == CDC_Handle->pUserLineCoding->b.dwDTERate))
      {
        USBH_CDC_LineCodingChanged(phost);
      }
    }

    else if(req_status != USBH_BUSY)
    {
      CDC_Handle->state = 132;
    }

    break;

  case 128:
    CDC_ProcessTransmission(phost);
    CDC_ProcessReception(phost);
    break;

  case 132:
    req_status = USBH_ClrFeature(phost, 0x00);

    if(req_status == USBH_OK )
    {

      CDC_Handle->state = 130 ;
    }
    break;

  default:
    break;

  }

  return status;
}
