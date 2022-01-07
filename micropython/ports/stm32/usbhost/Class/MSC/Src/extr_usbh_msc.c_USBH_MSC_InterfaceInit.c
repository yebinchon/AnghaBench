
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_18__ {TYPE_3__* Itf_Desc; } ;
struct TYPE_19__ {size_t current_interface; int speed; int address; TYPE_4__ CfgDesc; } ;
struct TYPE_20__ {TYPE_5__ device; TYPE_1__* pActiveClass; } ;
typedef TYPE_6__ USBH_HandleTypeDef ;
struct TYPE_21__ {int InEp; int OutEp; void* OutPipe; void* InPipe; int InEpSize; int OutEpSize; int unit; int req_state; int error; int state; scalar_t__ rw_lun; scalar_t__ current_lun; } ;
struct TYPE_17__ {TYPE_2__* Ep_Desc; } ;
struct TYPE_16__ {int bEndpointAddress; int wMaxPacketSize; } ;
struct TYPE_15__ {TYPE_7__* pData; int Name; int ClassCode; } ;
typedef TYPE_7__ MSC_HandleTypeDef ;


 int MSC_BOT ;
 int MSC_INIT ;
 int MSC_OK ;
 int MSC_REQ_IDLE ;
 int MSC_TRANSPARENT ;
 void* USBH_AllocPipe (TYPE_6__*,int) ;
 int USBH_DbgLog (char*,int ) ;
 int USBH_FAIL ;
 int USBH_FindInterface (TYPE_6__*,int ,int ,int ) ;
 int USBH_LL_SetToggle (TYPE_6__*,void*,int ) ;
 int USBH_MSC_BOT_Init (TYPE_6__*) ;
 int USBH_OK ;
 int USBH_OpenPipe (TYPE_6__*,void*,int,int ,int ,int ,int ) ;
 int USBH_SelectInterface (TYPE_6__*,int) ;
 scalar_t__ USBH_malloc (int) ;
 int USBH_memset (int ,int ,int) ;
 int USB_EP_TYPE_BULK ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MSC_InterfaceInit (USBH_HandleTypeDef *phost)
{
  uint8_t interface = 0;
  USBH_StatusTypeDef status = USBH_FAIL ;
  MSC_HandleTypeDef *MSC_Handle;

  interface = USBH_FindInterface(phost, phost->pActiveClass->ClassCode, MSC_TRANSPARENT, MSC_BOT);

  if(interface == 0xFF)
  {
    USBH_DbgLog ("Cannot Find the interface for %s class.", phost->pActiveClass->Name);
    status = USBH_FAIL;
  }
  else
  {
    USBH_SelectInterface (phost, interface);

    phost->pActiveClass->pData = (MSC_HandleTypeDef *)USBH_malloc (sizeof(MSC_HandleTypeDef));
    MSC_Handle = phost->pActiveClass->pData;

    if(phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].bEndpointAddress & 0x80)
    {
      MSC_Handle->InEp = (phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].bEndpointAddress);
      MSC_Handle->InEpSize = phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].wMaxPacketSize;
    }
    else
    {
      MSC_Handle->OutEp = (phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].bEndpointAddress);
      MSC_Handle->OutEpSize = phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[0].wMaxPacketSize;
    }

    if(phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[1].bEndpointAddress & 0x80)
    {
      MSC_Handle->InEp = (phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[1].bEndpointAddress);
      MSC_Handle->InEpSize = phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[1].wMaxPacketSize;
    }
    else
    {
      MSC_Handle->OutEp = (phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[1].bEndpointAddress);
      MSC_Handle->OutEpSize = phost->device.CfgDesc.Itf_Desc[phost->device.current_interface].Ep_Desc[1].wMaxPacketSize;
    }

    MSC_Handle->current_lun = 0;
    MSC_Handle->rw_lun = 0;
    MSC_Handle->state = MSC_INIT;
    MSC_Handle->error = MSC_OK;
    MSC_Handle->req_state = MSC_REQ_IDLE;
    MSC_Handle->OutPipe = USBH_AllocPipe(phost, MSC_Handle->OutEp);
    MSC_Handle->InPipe = USBH_AllocPipe(phost, MSC_Handle->InEp);

    USBH_MSC_BOT_Init(phost);


    USBH_memset(MSC_Handle->unit, 0, sizeof(MSC_Handle->unit));


    USBH_OpenPipe (phost,
                    MSC_Handle->OutPipe,
                    MSC_Handle->OutEp,
                    phost->device.address,
                    phost->device.speed,
                    USB_EP_TYPE_BULK,
                    MSC_Handle->OutEpSize);

    USBH_OpenPipe (phost,
                    MSC_Handle->InPipe,
                    MSC_Handle->InEp,
                    phost->device.address,
                    phost->device.speed,
                    USB_EP_TYPE_BULK,
                    MSC_Handle->InEpSize);


    USBH_LL_SetToggle (phost, MSC_Handle->InPipe,0);
    USBH_LL_SetToggle (phost, MSC_Handle->OutPipe,0);
    status = USBH_OK;
  }
  return status;
}
