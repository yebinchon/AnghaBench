
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_12__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_11__ {int supported; } ;
struct TYPE_10__ {int supported; } ;
struct TYPE_13__ {TYPE_3__ microphone; TYPE_2__ headphone; } ;
struct TYPE_9__ {TYPE_5__* pData; } ;
typedef TYPE_5__ AUDIO_HandleTypeDef ;


 int USBH_AUDIO_InputStream (TYPE_4__*) ;
 int USBH_AUDIO_OutputStream (TYPE_4__*) ;
 int USBH_BUSY ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_Process (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  AUDIO_HandleTypeDef *AUDIO_Handle = phost->pActiveClass->pData;

  if(AUDIO_Handle->headphone.supported == 1)
  {
    USBH_AUDIO_OutputStream (phost);
  }

  if(AUDIO_Handle->microphone.supported == 1)
  {
    USBH_AUDIO_InputStream (phost);
  }

  return status;
}
