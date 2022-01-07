
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_14__ {int iSerialNumber; int iProduct; int iManufacturer; int idVendor; int idProduct; int bMaxPacketSize; } ;
struct TYPE_13__ {int wTotalLength; } ;
struct TYPE_15__ {scalar_t__ Data; TYPE_3__ DevDesc; TYPE_2__ CfgDesc; int speed; int address; } ;
struct TYPE_12__ {int pipe_size; int pipe_out; int pipe_in; } ;
struct TYPE_16__ {int EnumState; int os_event; TYPE_4__ device; TYPE_1__ Control; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
 int USBH_BUSY ;
 int USBH_DEVICE_ADDRESS ;
 int USBH_Delay (int) ;
 int USBH_EP_CONTROL ;
 int USBH_Get_CfgDesc (TYPE_5__*,int ) ;
 int USBH_Get_DevDesc (TYPE_5__*,int) ;
 int USBH_Get_StringDesc (TYPE_5__*,int ,scalar_t__,int) ;
 int USBH_OK ;
 int USBH_OpenPipe (TYPE_5__*,int ,int,int ,int ,int ,int ) ;
 int USBH_STATE_CHANGED_EVENT ;
 int USBH_SetAddress (TYPE_5__*,int ) ;
 int USBH_UsrLog (char*,...) ;
 int USB_CONFIGURATION_DESC_SIZE ;
 int USB_DEVICE_DESC_SIZE ;
 int osMessagePut (int ,int ,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_HandleEnum (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef Status = USBH_BUSY;

  switch (phost->EnumState)
  {
  case 129:

    if ( USBH_Get_DevDesc(phost, 8) == USBH_OK)
    {
      phost->Control.pipe_size = phost->device.DevDesc.bMaxPacketSize;

      phost->EnumState = 133;


      USBH_OpenPipe (phost,
                           phost->Control.pipe_in,
                           0x80,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size);


      USBH_OpenPipe (phost,
                           phost->Control.pipe_out,
                           0x00,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size);

    }
    break;

  case 133:

    if ( USBH_Get_DevDesc(phost, USB_DEVICE_DESC_SIZE)== USBH_OK)
    {
      USBH_UsrLog("PID: %xh", phost->device.DevDesc.idProduct );
      USBH_UsrLog("VID: %xh", phost->device.DevDesc.idVendor );

      phost->EnumState = 128;

    }
    break;

  case 128:

    if ( USBH_SetAddress(phost, USBH_DEVICE_ADDRESS) == USBH_OK)
    {
      USBH_Delay(2);
      phost->device.address = USBH_DEVICE_ADDRESS;


      USBH_UsrLog("Address (#%d) assigned.", phost->device.address);
      phost->EnumState = 135;


      USBH_OpenPipe (phost,
                           phost->Control.pipe_in,
                           0x80,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size);


      USBH_OpenPipe (phost,
                           phost->Control.pipe_out,
                           0x00,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size);
    }
    break;

  case 135:

    if ( USBH_Get_CfgDesc(phost,
                          USB_CONFIGURATION_DESC_SIZE) == USBH_OK)
    {
      phost->EnumState = 134;
    }
    break;

  case 134:

    if (USBH_Get_CfgDesc(phost,
                         phost->device.CfgDesc.wTotalLength) == USBH_OK)
    {
      phost->EnumState = 132;
    }
    break;

  case 132:
    if (phost->device.DevDesc.iManufacturer != 0)
    {

      if ( USBH_Get_StringDesc(phost,
                               phost->device.DevDesc.iManufacturer,
                                phost->device.Data ,
                               0xff) == USBH_OK)
      {

        USBH_UsrLog("Manufacturer : %s", (char *)phost->device.Data);
        phost->EnumState = 131;




      }
    }
    else
    {
     USBH_UsrLog("Manufacturer : N/A");
     phost->EnumState = 131;



    }
    break;

  case 131:
    if (phost->device.DevDesc.iProduct != 0)
    {
      if ( USBH_Get_StringDesc(phost,
                               phost->device.DevDesc.iProduct,
                               phost->device.Data,
                               0xff) == USBH_OK)
      {

        USBH_UsrLog("Product : %s", (char *)phost->device.Data);
        phost->EnumState = 130;
      }
    }
    else
    {
      USBH_UsrLog("Product : N/A");
      phost->EnumState = 130;



    }
    break;

  case 130:
    if (phost->device.DevDesc.iSerialNumber != 0)
    {
      if ( USBH_Get_StringDesc(phost,
                               phost->device.DevDesc.iSerialNumber,
                               phost->device.Data,
                               0xff) == USBH_OK)
      {

         USBH_UsrLog("Serial Number : %s", (char *)phost->device.Data);
        Status = USBH_OK;
      }
    }
    else
    {
      USBH_UsrLog("Serial Number : N/A");
      Status = USBH_OK;



    }
    break;

  default:
    break;
  }
  return Status;
}
