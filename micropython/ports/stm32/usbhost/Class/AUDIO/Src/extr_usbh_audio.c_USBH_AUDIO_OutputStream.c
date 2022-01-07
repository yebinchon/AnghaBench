
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_17__ {int os_event; TYPE_1__* pActiveClass; } ;
typedef TYPE_6__ USBH_HandleTypeDef ;
struct TYPE_16__ {size_t asociated_as; int Ep; int frequency; } ;
struct TYPE_15__ {TYPE_3__* as_desc; } ;
struct TYPE_18__ {int play_state; TYPE_5__ headphone; TYPE_4__ class_desc; } ;
struct TYPE_14__ {TYPE_2__* FormatTypeDesc; } ;
struct TYPE_13__ {scalar_t__* tSamFreq; int bSamFreqType; } ;
struct TYPE_12__ {TYPE_7__* pData; } ;
typedef TYPE_7__ AUDIO_HandleTypeDef ;







 int USBH_AUDIO_FrequencySet (TYPE_6__*) ;
 int USBH_AUDIO_SetEndpointControls (TYPE_6__*,int ,int *) ;
 int USBH_AUDIO_Transmit (TYPE_6__*) ;
 int USBH_BUSY ;
 int USBH_CLASS_EVENT ;
 int USBH_OK ;
 int USBH_URB_EVENT ;
 int osMessagePut (int ,int ,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_OutputStream (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY ;
  AUDIO_HandleTypeDef *AUDIO_Handle = phost->pActiveClass->pData;
  uint8_t *buff;


  switch(AUDIO_Handle->play_state)
  {
  case 131:

    if( AUDIO_Handle->class_desc.as_desc[AUDIO_Handle->headphone.asociated_as].FormatTypeDesc->bSamFreqType == 0)
    {
      AUDIO_Handle->play_state = 128;
    }
    else
    {
      AUDIO_Handle->play_state = 129;
    }



    break;

  case 128:

    buff = (uint8_t*)AUDIO_Handle->class_desc.as_desc[AUDIO_Handle->headphone.asociated_as].FormatTypeDesc->tSamFreq[0];

    status = USBH_AUDIO_SetEndpointControls(phost, AUDIO_Handle->headphone.Ep, buff);
    if(status == USBH_OK)
    {
      AUDIO_Handle->play_state = 132;
    }
    break;

  case 129:
    buff = (uint8_t *)&AUDIO_Handle->headphone.frequency;
    status = USBH_AUDIO_SetEndpointControls(phost,AUDIO_Handle->headphone.Ep, buff);
    if(status == USBH_OK)
    {
      AUDIO_Handle->play_state = 132;
      USBH_AUDIO_FrequencySet(phost);
    }
    break;
  case 132:



    status = USBH_OK;
    break;

  case 130:
    USBH_AUDIO_Transmit(phost);
    status = USBH_OK;
    break;

  default:
    break;
  }

  return status;
}
