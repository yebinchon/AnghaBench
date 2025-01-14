
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_22__ {TYPE_3__* Itf_Desc; } ;
struct TYPE_23__ {int speed; int address; TYPE_4__ CfgDesc; } ;
struct TYPE_25__ {TYPE_5__ device; TYPE_1__* pActiveClass; } ;
typedef TYPE_7__ USBH_HandleTypeDef ;
struct TYPE_24__ {int state; int poll; } ;
struct TYPE_26__ {TYPE_6__ events; scalar_t__ is_ready; int state; void* DataOutPipe; int DataOutEpSize; int DataOutEp; void* DataInPipe; int DataInEpSize; int DataInEp; void* NotificationPipe; int NotificationEpSize; int NotificationEp; } ;
struct TYPE_21__ {TYPE_2__* Ep_Desc; } ;
struct TYPE_20__ {int wMaxPacketSize; int bEndpointAddress; int bInterval; } ;
struct TYPE_19__ {TYPE_8__* pData; } ;
typedef TYPE_8__ MTP_HandleTypeDef ;


 int MTP_EVENTS_INIT ;
 int MTP_FindCtlEndpoint (TYPE_7__*) ;
 int MTP_FindDataInEndpoint (TYPE_7__*) ;
 int MTP_FindDataOutEndpoint (TYPE_7__*) ;
 int MTP_OPENSESSION ;
 void* USBH_AllocPipe (TYPE_7__*,int ) ;
 int USBH_DbgLog (char*) ;
 int USBH_FAIL ;
 int USBH_FindInterface (TYPE_7__*,int ,int,int) ;
 int USBH_LL_SetToggle (TYPE_7__*,void*,int ) ;
 int USBH_OK ;
 int USBH_OpenPipe (TYPE_7__*,void*,int ,int ,int ,int ,int ) ;
 int USBH_PTP_Init (TYPE_7__*) ;
 int USBH_SelectInterface (TYPE_7__*,int) ;
 scalar_t__ USBH_malloc (int) ;
 int USB_EP_TYPE_BULK ;
 int USB_EP_TYPE_INTR ;
 int USB_MTP_CLASS ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MTP_InterfaceInit (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_OK ;
  uint8_t interface, endpoint;

  MTP_HandleTypeDef *MTP_Handle;

  interface = USBH_FindInterface(phost,
                                 USB_MTP_CLASS,
                                 1,
                                 1);

  if(interface == 0xFF)
  {
    status = USBH_FAIL;
    USBH_DbgLog ("Cannot Find the interface for Still Image Class.");
  }
  else
  {
    USBH_SelectInterface (phost, interface);

    endpoint = MTP_FindCtlEndpoint(phost);

    phost->pActiveClass->pData = (MTP_HandleTypeDef *)USBH_malloc (sizeof(MTP_HandleTypeDef));
    MTP_Handle = phost->pActiveClass->pData;

    if( MTP_Handle == ((void*)0))
    {
      status = USBH_FAIL;
      USBH_DbgLog ("Cannot allocate RAM for MTP Handle");
    }


    MTP_Handle->NotificationEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[endpoint].bEndpointAddress;
    MTP_Handle->NotificationEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[endpoint].wMaxPacketSize;
    MTP_Handle->NotificationPipe = USBH_AllocPipe(phost, MTP_Handle->NotificationEp);
    MTP_Handle->events.poll = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[endpoint].bInterval;


    USBH_OpenPipe (phost,
                    MTP_Handle->NotificationPipe,
                    MTP_Handle->NotificationEp,
                    phost->device.address,
                    phost->device.speed,
                    USB_EP_TYPE_INTR,
                    MTP_Handle->NotificationEpSize);

    USBH_LL_SetToggle (phost, MTP_Handle->NotificationPipe, 0);


    endpoint = MTP_FindDataInEndpoint(phost);


    MTP_Handle->DataInEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[endpoint].bEndpointAddress;
    MTP_Handle->DataInEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[endpoint].wMaxPacketSize;
    MTP_Handle->DataInPipe = USBH_AllocPipe(phost, MTP_Handle->DataInEp);


    USBH_OpenPipe (phost,
                    MTP_Handle->DataInPipe,
                    MTP_Handle->DataInEp,
                    phost->device.address,
                    phost->device.speed,
                    USB_EP_TYPE_BULK,
                    MTP_Handle->DataInEpSize);

    USBH_LL_SetToggle (phost, MTP_Handle->DataInPipe, 0);

    endpoint = MTP_FindDataOutEndpoint(phost);


    MTP_Handle->DataOutEp = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[endpoint].bEndpointAddress;
    MTP_Handle->DataOutEpSize = phost->device.CfgDesc.Itf_Desc[interface].Ep_Desc[endpoint].wMaxPacketSize;
    MTP_Handle->DataOutPipe = USBH_AllocPipe(phost, MTP_Handle->DataOutEp);


    USBH_OpenPipe (phost,
                    MTP_Handle->DataOutPipe,
                    MTP_Handle->DataOutEp,
                    phost->device.address,
                    phost->device.speed,
                    USB_EP_TYPE_BULK,
                    MTP_Handle->DataOutEpSize);

    USBH_LL_SetToggle (phost, MTP_Handle->DataOutPipe, 0);


  MTP_Handle->state = MTP_OPENSESSION;
  MTP_Handle->is_ready = 0;
  MTP_Handle->events.state = MTP_EVENTS_INIT;
  return USBH_PTP_Init(phost);

  }
  return status;
}
