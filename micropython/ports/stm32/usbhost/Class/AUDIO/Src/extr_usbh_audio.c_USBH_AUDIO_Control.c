
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_13__ {int Timer; TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_12__ {int timer; int Poll; int Pipe; int EpSize; } ;
struct TYPE_11__ {int asociated_channels; int asociated_feature; } ;
struct TYPE_14__ {int control_state; TYPE_3__ control; int * mem; TYPE_2__ headphone; int temp_channels; int temp_feature; } ;
struct TYPE_10__ {TYPE_5__* pData; } ;
typedef TYPE_5__ AUDIO_HandleTypeDef ;







 int LE16 (int *) ;
 int USBH_AUDIO_SetControlAttribute (TYPE_4__*,int) ;
 int USBH_BUSY ;
 int USBH_InterruptReceiveData (TYPE_4__*,int *,int ,int ) ;
 int USBH_LL_GetURBState (TYPE_4__*,int ) ;
 int USBH_OK ;
 int USBH_URB_DONE ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_Control (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY ;
  AUDIO_HandleTypeDef *AUDIO_Handle = phost->pActiveClass->pData;
  uint16_t attribute = 0;


  switch(AUDIO_Handle->control_state)
  {
  case 130:
    if((phost->Timer & 1) == 0)
    {
      AUDIO_Handle->control.timer = phost->Timer;
      USBH_InterruptReceiveData(phost,
                                (uint8_t *)(AUDIO_Handle->mem),
                                AUDIO_Handle->control.EpSize,
                                AUDIO_Handle->control.Pipe);

      AUDIO_Handle->temp_feature = AUDIO_Handle->headphone.asociated_feature;
      AUDIO_Handle->temp_channels = AUDIO_Handle->headphone.asociated_channels;

      AUDIO_Handle->control_state = 132 ;
    }
    break;
  case 132:
    if(USBH_LL_GetURBState(phost , AUDIO_Handle->control.Pipe) == USBH_URB_DONE)
    {
      attribute = LE16(&AUDIO_Handle->mem[0]);
      if(USBH_AUDIO_SetControlAttribute (phost, attribute) == USBH_BUSY)
      {
        break;
      }
    }

    if(( phost->Timer - AUDIO_Handle->control.timer) >= AUDIO_Handle->control.Poll)
    {
      AUDIO_Handle->control.timer = phost->Timer;

      USBH_InterruptReceiveData(phost,
                                (uint8_t *)(AUDIO_Handle->mem),
                                AUDIO_Handle->control.EpSize,
                                AUDIO_Handle->control.Pipe);

    }
    break;

  case 128:
       if( USBH_AUDIO_SetControlAttribute (phost, 1) == USBH_OK)
       {
         AUDIO_Handle->control_state = 130;
        status = USBH_OK;
       }
       break;

  case 129:
       if( USBH_AUDIO_SetControlAttribute (phost, 2) == USBH_OK)
       {
         AUDIO_Handle->control_state = 130;
         status = USBH_OK;
       }
       break;

  case 131:
  default:
    break;
  }

  return status;
}
