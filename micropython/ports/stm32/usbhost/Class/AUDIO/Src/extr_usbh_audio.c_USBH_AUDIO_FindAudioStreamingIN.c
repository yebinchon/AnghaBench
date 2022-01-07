
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_13__ {TYPE_3__* Itf_Desc; } ;
struct TYPE_14__ {TYPE_4__ CfgDesc; } ;
struct TYPE_16__ {TYPE_5__ device; TYPE_1__* pActiveClass; } ;
typedef TYPE_7__ USBH_HandleTypeDef ;
struct TYPE_17__ {TYPE_6__* stream_in; } ;
struct TYPE_15__ {int Ep; scalar_t__ EpSize; int valid; int Poll; int AltSettings; int interface; } ;
struct TYPE_12__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; TYPE_2__* Ep_Desc; int bAlternateSetting; int bInterfaceNumber; } ;
struct TYPE_11__ {int bEndpointAddress; scalar_t__ wMaxPacketSize; int bInterval; } ;
struct TYPE_10__ {TYPE_8__* pData; } ;
typedef TYPE_8__ AUDIO_HandleTypeDef ;


 scalar_t__ AC_CLASS ;
 int USBH_FAIL ;
 size_t USBH_MAX_NUM_INTERFACES ;
 int USBH_OK ;
 scalar_t__ USB_SUBCLASS_AUDIOSTREAMING ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_FindAudioStreamingIN(USBH_HandleTypeDef *phost)
{
  uint8_t interface, alt_settings;
  USBH_StatusTypeDef status = USBH_FAIL ;
  AUDIO_HandleTypeDef *AUDIO_Handle;

  AUDIO_Handle = phost->pActiveClass->pData;


  alt_settings = 0;
  for (interface = 0; interface < USBH_MAX_NUM_INTERFACES ; interface ++ )
  {
    if((phost->device.CfgDesc.Itf_Desc[interface].bInterfaceClass == AC_CLASS)&&
       (phost->device.CfgDesc.Itf_Desc[interface].bInterfaceSubClass == USB_SUBCLASS_AUDIOSTREAMING))
    {
      if((phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress & 0x80)&&
         (phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].wMaxPacketSize > 0))
      {
        AUDIO_Handle->stream_in[alt_settings].Ep = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress;
        AUDIO_Handle->stream_in[alt_settings].EpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].wMaxPacketSize;
        AUDIO_Handle->stream_in[alt_settings].interface = phost->device.CfgDesc.Itf_Desc[interface].bInterfaceNumber;
        AUDIO_Handle->stream_in[alt_settings].AltSettings = phost->device.CfgDesc.Itf_Desc[interface].bAlternateSetting;
        AUDIO_Handle->stream_in[alt_settings].Poll = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bInterval;
        AUDIO_Handle->stream_in[alt_settings].valid = 1;
        alt_settings++;
      }
    }
  }

  if(alt_settings > 0)
  {
     status = USBH_OK;
  }

  return status;
}
