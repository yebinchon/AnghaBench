#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_14__ {int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  iProduct; int /*<<< orphan*/  iManufacturer; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  bMaxPacketSize; } ;
struct TYPE_13__ {int /*<<< orphan*/  wTotalLength; } ;
struct TYPE_15__ {scalar_t__ Data; TYPE_3__ DevDesc; TYPE_2__ CfgDesc; int /*<<< orphan*/  speed; int /*<<< orphan*/  address; } ;
struct TYPE_12__ {int /*<<< orphan*/  pipe_size; int /*<<< orphan*/  pipe_out; int /*<<< orphan*/  pipe_in; } ;
struct TYPE_16__ {int EnumState; int /*<<< orphan*/  os_event; TYPE_4__ device; TYPE_1__ Control; } ;
typedef  TYPE_5__ USBH_HandleTypeDef ;

/* Variables and functions */
#define  ENUM_GET_CFG_DESC 135 
#define  ENUM_GET_FULL_CFG_DESC 134 
#define  ENUM_GET_FULL_DEV_DESC 133 
#define  ENUM_GET_MFC_STRING_DESC 132 
#define  ENUM_GET_PRODUCT_STRING_DESC 131 
#define  ENUM_GET_SERIALNUM_STRING_DESC 130 
#define  ENUM_IDLE 129 
#define  ENUM_SET_ADDR 128 
 int /*<<< orphan*/  USBH_BUSY ; 
 int /*<<< orphan*/  USBH_DEVICE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  USBH_EP_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBH_STATE_CHANGED_EVENT ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  USB_CONFIGURATION_DESC_SIZE ; 
 int USB_DEVICE_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static USBH_StatusTypeDef FUNC8 (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef Status = USBH_BUSY;  
  
  switch (phost->EnumState)
  {
  case ENUM_IDLE:  
    /* Get Device Desc for only 1st 8 bytes : To get EP0 MaxPacketSize */
    if ( FUNC2(phost, 8) == USBH_OK)
    {
      phost->Control.pipe_size = phost->device.DevDesc.bMaxPacketSize;

      phost->EnumState = ENUM_GET_FULL_DEV_DESC;
      
      /* modify control channels configuration for MaxPacket size */
      FUNC4 (phost,
                           phost->Control.pipe_in,
                           0x80,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size); 
      
      /* Open Control pipes */
      FUNC4 (phost,
                           phost->Control.pipe_out,
                           0x00,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size);           
      
    }
    break;
    
  case ENUM_GET_FULL_DEV_DESC:  
    /* Get FULL Device Desc  */
    if ( FUNC2(phost, USB_DEVICE_DESC_SIZE)== USBH_OK)
    {
      FUNC6("PID: %xh", phost->device.DevDesc.idProduct );  
      FUNC6("VID: %xh", phost->device.DevDesc.idVendor );  
      
      phost->EnumState = ENUM_SET_ADDR;
       
    }
    break;
   
  case ENUM_SET_ADDR: 
    /* set address */
    if ( FUNC5(phost, USBH_DEVICE_ADDRESS) == USBH_OK)
    {
      FUNC0(2);
      phost->device.address = USBH_DEVICE_ADDRESS;
      
      /* user callback for device address assigned */
      FUNC6("Address (#%d) assigned.", phost->device.address);
      phost->EnumState = ENUM_GET_CFG_DESC;
      
      /* modify control channels to update device address */
      FUNC4 (phost,
                           phost->Control.pipe_in,
                           0x80,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size); 
      
      /* Open Control pipes */
      FUNC4 (phost,
                           phost->Control.pipe_out,
                           0x00,
                           phost->device.address,
                           phost->device.speed,
                           USBH_EP_CONTROL,
                           phost->Control.pipe_size);        
    }
    break;
    
  case ENUM_GET_CFG_DESC:  
    /* get standard configuration descriptor */
    if ( FUNC1(phost, 
                          USB_CONFIGURATION_DESC_SIZE) == USBH_OK)
    {
      phost->EnumState = ENUM_GET_FULL_CFG_DESC;        
    }
    break;
    
  case ENUM_GET_FULL_CFG_DESC:  
    /* get FULL config descriptor (config, interface, endpoints) */
    if (FUNC1(phost, 
                         phost->device.CfgDesc.wTotalLength) == USBH_OK)
    {
      phost->EnumState = ENUM_GET_MFC_STRING_DESC;       
    }
    break;
    
  case ENUM_GET_MFC_STRING_DESC:  
    if (phost->device.DevDesc.iManufacturer != 0)
    { /* Check that Manufacturer String is available */
      
      if ( FUNC3(phost,
                               phost->device.DevDesc.iManufacturer, 
                                phost->device.Data , 
                               0xff) == USBH_OK)
      {
        /* User callback for Manufacturing string */
        FUNC6("Manufacturer : %s",  (char *)phost->device.Data);
        phost->EnumState = ENUM_GET_PRODUCT_STRING_DESC;
        
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_STATE_CHANGED_EVENT, 0);
#endif          
      }
    }
    else
    {
     FUNC6("Manufacturer : N/A");      
     phost->EnumState = ENUM_GET_PRODUCT_STRING_DESC; 
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_STATE_CHANGED_EVENT, 0);
#endif       
    }
    break;
    
  case ENUM_GET_PRODUCT_STRING_DESC:   
    if (phost->device.DevDesc.iProduct != 0)
    { /* Check that Product string is available */
      if ( FUNC3(phost,
                               phost->device.DevDesc.iProduct, 
                               phost->device.Data, 
                               0xff) == USBH_OK)
      {
        /* User callback for Product string */
        FUNC6("Product : %s",  (char *)phost->device.Data);
        phost->EnumState = ENUM_GET_SERIALNUM_STRING_DESC;        
      }
    }
    else
    {
      FUNC6("Product : N/A");
      phost->EnumState = ENUM_GET_SERIALNUM_STRING_DESC; 
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_STATE_CHANGED_EVENT, 0);
#endif        
    } 
    break;
    
  case ENUM_GET_SERIALNUM_STRING_DESC:   
    if (phost->device.DevDesc.iSerialNumber != 0)
    { /* Check that Serial number string is available */    
      if ( FUNC3(phost,
                               phost->device.DevDesc.iSerialNumber, 
                               phost->device.Data, 
                               0xff) == USBH_OK)
      {
        /* User callback for Serial number string */
         FUNC6("Serial Number : %s",  (char *)phost->device.Data);
        Status = USBH_OK;
      }
    }
    else
    {
      FUNC6("Serial Number : N/A"); 
      Status = USBH_OK;
#if (USBH_USE_OS == 1)
    osMessagePut ( phost->os_event, USBH_STATE_CHANGED_EVENT, 0);
#endif        
    }  
    break;
    
  default:
    break;
  }  
  return Status;
}