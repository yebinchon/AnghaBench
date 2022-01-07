
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_6__ {scalar_t__ gState; TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_7__ {scalar_t__ play_state; int control_state; } ;
struct TYPE_5__ {TYPE_3__* pData; } ;
typedef TYPE_3__ AUDIO_HandleTypeDef ;


 int AUDIO_CONTROL_INIT ;
 scalar_t__ AUDIO_PLAYBACK_IDLE ;
 scalar_t__ AUDIO_PLAYBACK_PLAY ;
 scalar_t__ HOST_CLASS ;
 int USBH_FAIL ;

USBH_StatusTypeDef USBH_AUDIO_Resume (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef Status = USBH_FAIL;
  AUDIO_HandleTypeDef *AUDIO_Handle;

  if(phost->gState == HOST_CLASS)
  {
    AUDIO_Handle = phost->pActiveClass->pData;
    if(AUDIO_Handle->play_state == AUDIO_PLAYBACK_IDLE)
    {
      AUDIO_Handle->control_state = AUDIO_CONTROL_INIT;
      AUDIO_Handle->play_state = AUDIO_PLAYBACK_PLAY;
    }
  }
  return Status;
}
