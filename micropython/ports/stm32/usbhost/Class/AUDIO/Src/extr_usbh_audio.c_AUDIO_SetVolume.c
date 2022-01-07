
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_7__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_8__ {int * mem; } ;
struct TYPE_6__ {TYPE_3__* pData; } ;
typedef TYPE_3__ AUDIO_HandleTypeDef ;


 int UAC_FEATURE_UNIT ;
 int USBH_AC_SetCur (TYPE_2__*,int ,int ,int ,int ,int) ;
 int USBH_BUSY ;
 int VOLUME_CONTROL ;

__attribute__((used)) static USBH_StatusTypeDef AUDIO_SetVolume (USBH_HandleTypeDef *phost, uint8_t feature, uint8_t channel, uint16_t volume)
{
  USBH_StatusTypeDef status = USBH_BUSY ;
  AUDIO_HandleTypeDef *AUDIO_Handle;


  AUDIO_Handle = phost->pActiveClass->pData;

  AUDIO_Handle->mem[0] = volume;

  status = USBH_AC_SetCur(phost,
                          UAC_FEATURE_UNIT,
                          feature,
                          VOLUME_CONTROL,
                          channel,
                          2);

  return status;
}
