
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
struct TYPE_13__ {int os_event; int (* pUser ) (TYPE_4__*,int ) ;TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_12__ {int supported; int AltSettings; int interface; int asociated_channels; int asociated_feature; } ;
struct TYPE_11__ {int supported; int AltSettings; int interface; } ;
struct TYPE_14__ {int req_state; int play_state; TYPE_3__ headphone; TYPE_2__ microphone; void* cs_req_state; int temp_channels; int temp_feature; } ;
struct TYPE_10__ {TYPE_5__* pData; } ;
typedef TYPE_5__ AUDIO_HandleTypeDef ;


 int AUDIO_PLAYBACK_INIT ;

 void* AUDIO_REQ_GET_VOLUME ;






 int HOST_USER_CLASS_ACTIVE ;
 int USBH_AUDIO_HandleCSRequest (TYPE_4__*) ;
 int USBH_BUSY ;
 int USBH_CLASS_EVENT ;
 int USBH_OK ;
 int USBH_SetInterface (TYPE_4__*,int ,int ) ;
 int USBH_URB_EVENT ;
 int osMessagePut (int ,int ,int ) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_ClassRequest(USBH_HandleTypeDef *phost)
{
  AUDIO_HandleTypeDef *AUDIO_Handle = phost->pActiveClass->pData;
  USBH_StatusTypeDef status = USBH_BUSY;
  USBH_StatusTypeDef req_status = USBH_BUSY;


  switch (AUDIO_Handle->req_state)
  {
  case 132:
  case 131:
    if(AUDIO_Handle->microphone.supported == 1)
    {
      req_status = USBH_SetInterface(phost,
                                     AUDIO_Handle->microphone.interface,
                                     0);

      if(req_status == USBH_OK)
      {
        AUDIO_Handle->req_state = 130;
      }

    }
    else
    {
      AUDIO_Handle->req_state = 130;



    }
    break;

  case 130:
    if(AUDIO_Handle->headphone.supported == 1)
    {
      req_status = USBH_SetInterface(phost,
                                     AUDIO_Handle->headphone.interface,
                                     0);

      if(req_status == USBH_OK)
      {
        AUDIO_Handle->req_state = 134;
        AUDIO_Handle->cs_req_state = AUDIO_REQ_GET_VOLUME;

        AUDIO_Handle->temp_feature = AUDIO_Handle->headphone.asociated_feature;
        AUDIO_Handle->temp_channels = AUDIO_Handle->headphone.asociated_channels;
      }
    }
    else
    {
        AUDIO_Handle->req_state = 134;
        AUDIO_Handle->cs_req_state = AUDIO_REQ_GET_VOLUME;



    }
    break;

  case 134:
    if(USBH_AUDIO_HandleCSRequest (phost) == USBH_OK)
    {
      AUDIO_Handle->req_state = 129;
    }
    break;

  case 129:
    if(AUDIO_Handle->microphone.supported == 1)
    {
      req_status = USBH_SetInterface(phost,
                                     AUDIO_Handle->microphone.interface,
                                     AUDIO_Handle->microphone.AltSettings);

      if(req_status == USBH_OK)
      {
        AUDIO_Handle->req_state = 128;
      }
    }
    else
    {
      AUDIO_Handle->req_state = 128;



    }
    break;
  case 128:
   if(AUDIO_Handle->headphone.supported == 1)
    {
      req_status = USBH_SetInterface(phost,
                                     AUDIO_Handle->headphone.interface,
                                     AUDIO_Handle->headphone.AltSettings);

      if(req_status == USBH_OK)
      {
        AUDIO_Handle->req_state = 133;
      }

    }
   else
   {
     AUDIO_Handle->req_state = 133;



   }
   break;
  case 133:
    AUDIO_Handle->play_state = AUDIO_PLAYBACK_INIT;
    phost->pUser(phost, HOST_USER_CLASS_ACTIVE);
    status = USBH_OK;



  default:
    break;
  }
  return status;
}
