
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_13__ {int Timer; TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_12__ {int timer; int buf; int frame_length; int partial_ptr; int global_ptr; int cbuf; int Poll; int total_length; int Pipe; } ;
struct TYPE_11__ {int supported; } ;
struct TYPE_14__ {int processing_state; int play_state; TYPE_3__ headphone; TYPE_2__ control; } ;
struct TYPE_10__ {TYPE_5__* pData; } ;
typedef TYPE_5__ AUDIO_HandleTypeDef ;




 int AUDIO_PLAYBACK_IDLE ;
 int USBH_AUDIO_Control (TYPE_4__*) ;
 int USBH_BUSY ;
 int USBH_IsocSendData (TYPE_4__*,int,int,int ) ;
 int USBH_LL_GetURBState (TYPE_4__*,int ) ;
 int USBH_URB_DONE ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_Transmit (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY ;
  AUDIO_HandleTypeDef *AUDIO_Handle = phost->pActiveClass->pData;

  switch(AUDIO_Handle->processing_state)
  {
  case 128:

    if((phost->Timer & 1) == 0)
    {
      AUDIO_Handle->headphone.timer = phost->Timer;
      AUDIO_Handle->processing_state = 129;
      USBH_IsocSendData(phost,
                       AUDIO_Handle->headphone.buf,
                       AUDIO_Handle->headphone.frame_length,
                       AUDIO_Handle->headphone.Pipe);

      AUDIO_Handle->headphone.partial_ptr = AUDIO_Handle->headphone.frame_length;
      AUDIO_Handle->headphone.global_ptr = AUDIO_Handle->headphone.frame_length;
      AUDIO_Handle->headphone.cbuf = AUDIO_Handle->headphone.buf;

    }
    break;

  case 129:
    if((USBH_LL_GetURBState(phost , AUDIO_Handle->headphone.Pipe) == USBH_URB_DONE)&&
       (( phost->Timer - AUDIO_Handle->headphone.timer) >= AUDIO_Handle->headphone.Poll))
    {
      AUDIO_Handle->headphone.timer = phost->Timer;

      if(AUDIO_Handle->control.supported == 1)
      {
        USBH_AUDIO_Control (phost);
      }

      if(AUDIO_Handle->headphone.global_ptr <= AUDIO_Handle->headphone.total_length)
      {
        USBH_IsocSendData(phost,
                          AUDIO_Handle->headphone.cbuf,
                          AUDIO_Handle->headphone.frame_length,
                          AUDIO_Handle->headphone.Pipe);

        AUDIO_Handle->headphone.cbuf += AUDIO_Handle->headphone.frame_length;
        AUDIO_Handle->headphone.partial_ptr += AUDIO_Handle->headphone.frame_length;
        AUDIO_Handle->headphone.global_ptr += AUDIO_Handle->headphone.frame_length;
      }
      else
      {
       AUDIO_Handle->headphone.partial_ptr = 0xFFFFFFFF;
       AUDIO_Handle->play_state = AUDIO_PLAYBACK_IDLE;
      }
    }
    break;
  }
  return status;
}
