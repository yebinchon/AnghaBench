
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_8__ {scalar_t__ gState; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_7__ {int total_length; int * buf; } ;
struct TYPE_9__ {scalar_t__ play_state; int processing_state; int control_state; TYPE_2__ headphone; } ;
struct TYPE_6__ {TYPE_4__* pData; } ;
typedef TYPE_4__ AUDIO_HandleTypeDef ;


 int AUDIO_CONTROL_INIT ;
 int AUDIO_DATA_START_OUT ;
 scalar_t__ AUDIO_PLAYBACK_IDLE ;
 scalar_t__ AUDIO_PLAYBACK_PLAY ;
 scalar_t__ HOST_CLASS ;
 int USBH_FAIL ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_AUDIO_Play (USBH_HandleTypeDef *phost, uint8_t *buf, uint32_t length)
{
  USBH_StatusTypeDef Status = USBH_FAIL;
  AUDIO_HandleTypeDef *AUDIO_Handle;

  if(phost->gState == HOST_CLASS)
  {
    AUDIO_Handle = phost->pActiveClass->pData;
    if(AUDIO_Handle->play_state == AUDIO_PLAYBACK_IDLE)
    {
      AUDIO_Handle->headphone.buf = buf;
      AUDIO_Handle->headphone.total_length = length;
      AUDIO_Handle->play_state = AUDIO_PLAYBACK_PLAY;
      AUDIO_Handle->control_state = AUDIO_CONTROL_INIT;
      AUDIO_Handle->processing_state = AUDIO_DATA_START_OUT;
      Status = USBH_OK;
    }
  }
  return Status;
}
