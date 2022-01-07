
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_17__ {TYPE_3__* Itf_Desc; } ;
struct TYPE_18__ {size_t current_interface; int speed; int address; TYPE_4__ CfgDesc; } ;
struct TYPE_19__ {TYPE_5__ device; TYPE_1__* pActiveClass; } ;
typedef TYPE_6__ USBH_HandleTypeDef ;
struct TYPE_20__ {int ep_addr; scalar_t__ poll; int InEp; int OutEp; void* OutPipe; int length; void* InPipe; int ctl_state; int state; int Init; } ;
struct TYPE_16__ {scalar_t__ bInterfaceProtocol; scalar_t__ bNumEndpoints; TYPE_2__* Ep_Desc; } ;
struct TYPE_15__ {int bEndpointAddress; scalar_t__ bInterval; int wMaxPacketSize; } ;
struct TYPE_14__ {TYPE_7__* pData; int Name; int ClassCode; } ;
typedef TYPE_7__ HID_HandleTypeDef ;


 int HID_BOOT_CODE ;
 int HID_ERROR ;
 int HID_INIT ;
 scalar_t__ HID_KEYBRD_BOOT_CODE ;
 scalar_t__ HID_MIN_POLL ;
 scalar_t__ HID_MOUSE_BOOT_CODE ;
 int HID_REQ_INIT ;
 void* USBH_AllocPipe (TYPE_6__*,int) ;
 int USBH_DbgLog (char*,int ) ;
 int USBH_FAIL ;
 int USBH_FindInterface (TYPE_6__*,int ,int ,int) ;
 int USBH_HID_KeybdInit ;
 int USBH_HID_MouseInit ;
 int USBH_LL_SetToggle (TYPE_6__*,void*,int ) ;
 scalar_t__ USBH_MAX_NUM_ENDPOINTS ;
 int USBH_OK ;
 int USBH_OpenPipe (TYPE_6__*,void*,int,int ,int ,int ,int ) ;
 int USBH_SelectInterface (TYPE_6__*,int) ;
 int USBH_UsrLog (char*) ;
 scalar_t__ USBH_malloc (int) ;
 int USB_EP_TYPE_INTR ;

__attribute__((used)) static USBH_StatusTypeDef USBH_HID_InterfaceInit (USBH_HandleTypeDef *phost)
{
  uint8_t max_ep;
  uint8_t num = 0;
  uint8_t interface;

  USBH_StatusTypeDef status = USBH_FAIL ;
  HID_HandleTypeDef *HID_Handle;

  interface = USBH_FindInterface(phost, phost->pActiveClass->ClassCode, HID_BOOT_CODE, 0xFF);

  if(interface == 0xFF)
  {
    status = USBH_FAIL;
    USBH_DbgLog ("Cannot Find the interface for %s class.", phost->pActiveClass->Name);
  }
  else
  {
    USBH_SelectInterface (phost, interface);
    phost->pActiveClass->pData = (HID_HandleTypeDef *)USBH_malloc (sizeof(HID_HandleTypeDef));
    HID_Handle = phost->pActiveClass->pData;
    HID_Handle->state = HID_ERROR;


    if(phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].bInterfaceProtocol == HID_KEYBRD_BOOT_CODE)
    {
      USBH_UsrLog ("KeyBoard device found!");
      HID_Handle->Init = USBH_HID_KeybdInit;
    }
    else if(phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].bInterfaceProtocol == HID_MOUSE_BOOT_CODE)
    {
      USBH_UsrLog ("Mouse device found!");
      HID_Handle->Init = USBH_HID_MouseInit;
    }
    else
    {
      USBH_UsrLog ("Protocol not supported.");
      return USBH_FAIL;
    }

    HID_Handle->state = HID_INIT;
    HID_Handle->ctl_state = HID_REQ_INIT;
    HID_Handle->ep_addr = phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].bEndpointAddress;
    HID_Handle->length = phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].wMaxPacketSize;
    HID_Handle->poll = phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].bInterval ;

    if (HID_Handle->poll < HID_MIN_POLL)
    {
      HID_Handle->poll = HID_MIN_POLL;
    }




    max_ep = ( (phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].bNumEndpoints <= USBH_MAX_NUM_ENDPOINTS) ?
              phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].bNumEndpoints :
                  USBH_MAX_NUM_ENDPOINTS);



    for ( ;num < max_ep; num++)
    {
      if(phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[num].bEndpointAddress & 0x80)
      {
        HID_Handle->InEp = (phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[num].bEndpointAddress);
        HID_Handle->InPipe = USBH_AllocPipe(phost, HID_Handle->InEp);



        USBH_OpenPipe (phost,
                        HID_Handle->InPipe,
                        HID_Handle->InEp,
                        phost->device.address,
                        phost->device.speed,
                        USB_EP_TYPE_INTR,
                        HID_Handle->length);

        USBH_LL_SetToggle (phost, HID_Handle->InPipe, 0);

      }
      else
      {
        HID_Handle->OutEp = (phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[num].bEndpointAddress);
        HID_Handle->OutPipe = USBH_AllocPipe(phost, HID_Handle->OutEp);



        USBH_OpenPipe (phost,
                        HID_Handle->OutPipe,
                        HID_Handle->OutEp,
                        phost->device.address,
                        phost->device.speed,
                        USB_EP_TYPE_INTR,
                        HID_Handle->length);

        USBH_LL_SetToggle (phost, HID_Handle->OutPipe, 0);
      }

    }
    status = USBH_OK;
  }
  return status;
}
