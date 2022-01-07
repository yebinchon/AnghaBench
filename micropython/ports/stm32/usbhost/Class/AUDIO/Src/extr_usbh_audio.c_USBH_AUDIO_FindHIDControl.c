
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_14__ {TYPE_3__* Itf_Desc; } ;
struct TYPE_15__ {TYPE_4__ CfgDesc; } ;
struct TYPE_17__ {TYPE_5__ device; TYPE_1__* pActiveClass; } ;
typedef TYPE_7__ USBH_HandleTypeDef ;
struct TYPE_16__ {int Ep; scalar_t__ EpSize; int supported; int Poll; int interface; } ;
struct TYPE_18__ {TYPE_6__ control; } ;
struct TYPE_13__ {int bInterfaceClass; TYPE_2__* Ep_Desc; int bInterfaceNumber; } ;
struct TYPE_12__ {scalar_t__ wMaxPacketSize; int bEndpointAddress; int bInterval; } ;
struct TYPE_11__ {TYPE_8__* pData; } ;
typedef TYPE_8__ AUDIO_HandleTypeDef ;


 int AC_CLASS ;
 int USBH_FAIL ;
 int USBH_FindInterface (TYPE_7__*,int ,int ,int) ;
 int USBH_MAX_NUM_INTERFACES ;
 int USBH_OK ;
 int USB_SUBCLASS_AUDIOCONTROL ;

__attribute__((used)) static USBH_StatusTypeDef USBH_AUDIO_FindHIDControl(USBH_HandleTypeDef *phost)
{
  uint8_t interface;
  USBH_StatusTypeDef status = USBH_FAIL ;
  AUDIO_HandleTypeDef *AUDIO_Handle;

  AUDIO_Handle = phost->pActiveClass->pData;


  interface = USBH_FindInterface(phost, AC_CLASS, USB_SUBCLASS_AUDIOCONTROL, 0xFF);
  if(interface != 0xFF)
  {
    for (interface = 0; interface < USBH_MAX_NUM_INTERFACES ; interface ++ )
    {
      if((phost->device.CfgDesc.Itf_Desc[interface].bInterfaceClass == 0x03)&&
        (phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].wMaxPacketSize > 0))
      {
        if((phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress & 0x80) == 0x80)
        {
          AUDIO_Handle->control.Ep = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress;
          AUDIO_Handle->control.EpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].wMaxPacketSize;
          AUDIO_Handle->control.interface = phost->device.CfgDesc.Itf_Desc[interface].bInterfaceNumber;
          AUDIO_Handle->control.Poll = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bInterval;
          AUDIO_Handle->control.supported = 1;
          status = USBH_OK;
          break;
        }
      }
    }
  }
  return status;
}
