
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_18__ {TYPE_7__* Itf_Desc; } ;
struct TYPE_19__ {int speed; int address; TYPE_3__ CfgDesc; } ;
struct TYPE_23__ {TYPE_4__ device; TYPE_2__* pActiveClass; } ;
typedef TYPE_8__ USBH_HandleTypeDef ;
struct TYPE_20__ {int InEp; int OutEp; void* InPipe; void* OutPipe; int InEpSize; int OutEpSize; } ;
struct TYPE_16__ {int NotifEp; void* NotifPipe; int NotifEpSize; } ;
struct TYPE_24__ {TYPE_5__ DataItf; int state; TYPE_1__ CommItf; } ;
struct TYPE_22__ {TYPE_6__* Ep_Desc; } ;
struct TYPE_21__ {int bEndpointAddress; int wMaxPacketSize; } ;
struct TYPE_17__ {int Name; TYPE_9__* pData; } ;
typedef TYPE_9__ CDC_HandleTypeDef ;


 int ABSTRACT_CONTROL_MODEL ;
 int CDC_IDLE_STATE ;
 int COMMON_AT_COMMAND ;
 int COMMUNICATION_INTERFACE_CLASS_CODE ;
 int DATA_INTERFACE_CLASS_CODE ;
 int NO_CLASS_SPECIFIC_PROTOCOL_CODE ;
 int RESERVED ;
 void* USBH_AllocPipe (TYPE_8__*,int) ;
 int USBH_DbgLog (char*,int ) ;
 int USBH_FAIL ;
 int USBH_FindInterface (TYPE_8__*,int ,int ,int ) ;
 int USBH_LL_SetToggle (TYPE_8__*,void*,int ) ;
 int USBH_OK ;
 int USBH_OpenPipe (TYPE_8__*,void*,int,int ,int ,int ,int ) ;
 int USBH_SelectInterface (TYPE_8__*,int) ;
 scalar_t__ USBH_malloc (int) ;
 int USB_EP_TYPE_BULK ;
 int USB_EP_TYPE_INTR ;

__attribute__((used)) static USBH_StatusTypeDef USBH_CDC_InterfaceInit (USBH_HandleTypeDef *phost)
{

  USBH_StatusTypeDef status = USBH_FAIL ;
  uint8_t interface;
  CDC_HandleTypeDef *CDC_Handle;

  interface = USBH_FindInterface(phost,
                                 COMMUNICATION_INTERFACE_CLASS_CODE,
                                 ABSTRACT_CONTROL_MODEL,
                                 COMMON_AT_COMMAND);

  if(interface == 0xFF)
  {
    USBH_DbgLog ("Cannot Find the interface for Communication Interface Class.", phost->pActiveClass->Name);
  }
  else
  {
    USBH_SelectInterface (phost, interface);
    phost->pActiveClass->pData = (CDC_HandleTypeDef *)USBH_malloc (sizeof(CDC_HandleTypeDef));
    CDC_Handle = phost->pActiveClass->pData;


    if(phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress & 0x80)
    {
      CDC_Handle->CommItf.NotifEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress;
      CDC_Handle->CommItf.NotifEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].wMaxPacketSize;
    }


    CDC_Handle->CommItf.NotifPipe = USBH_AllocPipe(phost, CDC_Handle->CommItf.NotifEp);


    USBH_OpenPipe (phost,
                    CDC_Handle->CommItf.NotifPipe,
                    CDC_Handle->CommItf.NotifEp,
                    phost->device.address,
                    phost->device.speed,
                    USB_EP_TYPE_INTR,
                    CDC_Handle->CommItf.NotifEpSize);

    USBH_LL_SetToggle (phost, CDC_Handle->CommItf.NotifPipe, 0);

    interface = USBH_FindInterface(phost,
                                   DATA_INTERFACE_CLASS_CODE,
                                   RESERVED,
                                   NO_CLASS_SPECIFIC_PROTOCOL_CODE);

    if(interface == 0xFF)
    {
      USBH_DbgLog ("Cannot Find the interface for Data Interface Class.", phost->pActiveClass->Name);
    }
    else
    {

      if(phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress & 0x80)
      {
        CDC_Handle->DataItf.InEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress;
        CDC_Handle->DataItf.InEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].wMaxPacketSize;
      }
      else
      {
        CDC_Handle->DataItf.OutEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].bEndpointAddress;
        CDC_Handle->DataItf.OutEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[0].wMaxPacketSize;
      }

      if(phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[1].bEndpointAddress & 0x80)
      {
        CDC_Handle->DataItf.InEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[1].bEndpointAddress;
        CDC_Handle->DataItf.InEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[1].wMaxPacketSize;
      }
      else
      {
        CDC_Handle->DataItf.OutEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[1].bEndpointAddress;
        CDC_Handle->DataItf.OutEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[1].wMaxPacketSize;
      }


      CDC_Handle->DataItf.OutPipe = USBH_AllocPipe(phost, CDC_Handle->DataItf.OutEp);


      CDC_Handle->DataItf.InPipe = USBH_AllocPipe(phost, CDC_Handle->DataItf.InEp);


      USBH_OpenPipe (phost,
                      CDC_Handle->DataItf.OutPipe,
                      CDC_Handle->DataItf.OutEp,
                      phost->device.address,
                      phost->device.speed,
                      USB_EP_TYPE_BULK,
                      CDC_Handle->DataItf.OutEpSize);

      USBH_OpenPipe (phost,
                      CDC_Handle->DataItf.InPipe,
                      CDC_Handle->DataItf.InEp,
                      phost->device.address,
                      phost->device.speed,
                      USB_EP_TYPE_BULK,
                      CDC_Handle->DataItf.InEpSize);

      CDC_Handle->state = CDC_IDLE_STATE;

      USBH_LL_SetToggle (phost, CDC_Handle->DataItf.OutPipe,0);
      USBH_LL_SetToggle (phost, CDC_Handle->DataItf.InPipe,0);
      status = USBH_OK;
    }
  }
  return status;
}
