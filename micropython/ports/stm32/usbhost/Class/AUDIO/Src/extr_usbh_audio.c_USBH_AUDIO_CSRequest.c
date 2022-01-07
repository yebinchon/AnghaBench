
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_14__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_12__ {int volumeMin; int volumeMax; void* resolution; void* volume; } ;
struct TYPE_13__ {TYPE_2__ attribute; } ;
struct TYPE_15__ {int cs_req_state; int * mem; TYPE_3__ headphone; } ;
struct TYPE_11__ {TYPE_5__* pData; } ;
typedef TYPE_5__ AUDIO_HandleTypeDef ;







 void* LE16 (int *) ;
 int UAC_FEATURE_UNIT ;
 int USBH_AC_GetCur (TYPE_4__*,int ,int ,int ,int ,int) ;
 int USBH_AC_GetMax (TYPE_4__*,int ,int ,int ,int ,int) ;
 int USBH_AC_GetMin (TYPE_4__*,int ,int ,int ,int ,int) ;
 int USBH_AC_GetRes (TYPE_4__*,int ,int ,int ,int ,int) ;
 int USBH_BUSY ;
 int USBH_OK ;
 int VOLUME_CONTROL ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_CSRequest(USBH_HandleTypeDef *phost, uint8_t feature, uint8_t channel)
{
  AUDIO_HandleTypeDef *AUDIO_Handle = phost->pActiveClass->pData;
  USBH_StatusTypeDef status = USBH_BUSY;
  USBH_StatusTypeDef req_status = USBH_BUSY;


  switch (AUDIO_Handle->cs_req_state)
  {
  case 128:
    req_status = USBH_AC_GetCur(phost,
                                UAC_FEATURE_UNIT,
                                feature,
                                VOLUME_CONTROL,
                                channel,
                                0x02);
    if(req_status != USBH_BUSY)
    {
      AUDIO_Handle->cs_req_state = 130;
      AUDIO_Handle->headphone.attribute.volume = LE16(&(AUDIO_Handle->mem[0]));
    }
    break;

  case 130:
    req_status = USBH_AC_GetMin(phost,
                                UAC_FEATURE_UNIT,
                                feature,
                                VOLUME_CONTROL,
                                channel,
                                0x02);
    if(req_status != USBH_BUSY)
    {
      AUDIO_Handle->cs_req_state = 131;
      AUDIO_Handle->headphone.attribute.volumeMin = LE16(&AUDIO_Handle->mem[0]);
    }
    break;

  case 131:
    req_status = USBH_AC_GetMax(phost,
                                UAC_FEATURE_UNIT,
                                feature,
                                VOLUME_CONTROL,
                                channel,
                                0x02);
    if(req_status != USBH_BUSY)
    {
      AUDIO_Handle->cs_req_state = 129;
      AUDIO_Handle->headphone.attribute.volumeMax = LE16(&AUDIO_Handle->mem[0]);

      if (AUDIO_Handle->headphone.attribute.volumeMax < AUDIO_Handle->headphone.attribute.volumeMin)
      {
        AUDIO_Handle->headphone.attribute.volumeMax = 0xFF00;
      }
    }
    break;

  case 129:
    req_status = USBH_AC_GetRes(phost,
                                UAC_FEATURE_UNIT,
                                feature,
                                VOLUME_CONTROL,
                                channel,
                                0x02);
    if(req_status != USBH_BUSY)
    {
      AUDIO_Handle->cs_req_state = 132;
      AUDIO_Handle->headphone.attribute.resolution = LE16(&AUDIO_Handle->mem[0]);
    }
    break;


  case 132:
    status = USBH_OK;
  default:
    break;
  }
  return status;
}
