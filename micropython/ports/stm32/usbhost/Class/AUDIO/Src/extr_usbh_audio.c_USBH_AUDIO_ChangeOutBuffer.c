
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_8__ {scalar_t__ gState; TYPE_1__* pActiveClass; } ;
typedef TYPE_3__ USBH_HandleTypeDef ;
struct TYPE_7__ {scalar_t__ partial_ptr; int * buf; int * cbuf; } ;
struct TYPE_9__ {scalar_t__ play_state; TYPE_2__ headphone; } ;
struct TYPE_6__ {TYPE_4__* pData; } ;
typedef TYPE_4__ AUDIO_HandleTypeDef ;


 scalar_t__ AUDIO_PLAYBACK_PLAY ;
 scalar_t__ HOST_CLASS ;
 int USBH_FAIL ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_AUDIO_ChangeOutBuffer (USBH_HandleTypeDef *phost, uint8_t *buf)
{
  USBH_StatusTypeDef Status = USBH_FAIL;
  AUDIO_HandleTypeDef *AUDIO_Handle;

  if(phost->gState == HOST_CLASS)
  {
    AUDIO_Handle = phost->pActiveClass->pData;
    if(AUDIO_Handle->play_state == AUDIO_PLAYBACK_PLAY)
    {
      if(AUDIO_Handle->headphone.buf <= buf)
      {
        AUDIO_Handle->headphone.cbuf = buf;
        if ( AUDIO_Handle->headphone.buf == buf)
        {
          AUDIO_Handle->headphone.partial_ptr = 0;
        }
        Status = USBH_OK;
      }
    }
  }
  return Status;
}
