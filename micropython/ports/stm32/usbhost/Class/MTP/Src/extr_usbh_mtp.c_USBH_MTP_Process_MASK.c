#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_21__ {int /*<<< orphan*/  (* pUser ) (TYPE_4__*,int /*<<< orphan*/ ) ;TYPE_1__* pActiveClass; } ;
typedef  TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_23__ {int /*<<< orphan*/  StorageDescription; int /*<<< orphan*/  VolumeLabel; } ;
struct TYPE_16__ {size_t n; int /*<<< orphan*/ * Storage; } ;
struct TYPE_17__ {int VendorExtensionID; int /*<<< orphan*/  SerialNumber; int /*<<< orphan*/  DeviceVersion; int /*<<< orphan*/  Model; int /*<<< orphan*/  Manufacturer; int /*<<< orphan*/  DevicePropertiesSupported_len; int /*<<< orphan*/  EventsSupported_len; int /*<<< orphan*/  OperationsSupported_len; int /*<<< orphan*/  FunctionalMode; int /*<<< orphan*/  StandardVersion; } ;
struct TYPE_20__ {TYPE_9__* storinfo; TYPE_11__ storids; TYPE_13__ devinfo; } ;
struct TYPE_19__ {int /*<<< orphan*/  CurrentStorageId; } ;
struct TYPE_22__ {int state; size_t current_storage_unit; int is_ready; TYPE_3__ info; TYPE_2__ params; } ;
struct TYPE_18__ {TYPE_5__* pData; } ;
typedef  TYPE_5__ MTP_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_USER_CLASS_ACTIVE ; 
#define  MTP_GETDEVICEINFO 132 
#define  MTP_GETSTORAGEIDS 131 
#define  MTP_GETSTORAGEINFO 130 
#define  MTP_IDLE 129 
#define  MTP_OPENSESSION 128 
 int /*<<< orphan*/  USBH_BUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  USBH_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static USBH_StatusTypeDef FUNC8 (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  MTP_HandleTypeDef *MTP_Handle =  phost->pActiveClass->pData;
  uint32_t idx = 0;
  
  switch(MTP_Handle->state)
  {
  case  MTP_OPENSESSION:
    
    status = FUNC5 (phost, 1); /* Session '0' is not valid */
    
    if(status == USBH_OK)
    {
      FUNC6("MTP Session #0 Opened");
      MTP_Handle->state = MTP_GETDEVICEINFO; 
    }
    break;
    
  case MTP_GETDEVICEINFO:
    status = FUNC2 (phost, &(MTP_Handle->info.devinfo));
    
    if(status == USBH_OK)
    {
      FUNC0(">>>>> MTP Device Information");
      FUNC0("Standard version : %x", MTP_Handle->info.devinfo.StandardVersion);
      FUNC0("Vendor ExtID : %s", (MTP_Handle->info.devinfo.VendorExtensionID == 6)?"MTP": "NOT SUPPORTED");      
      FUNC0("Functional mode : %s", (MTP_Handle->info.devinfo.FunctionalMode == 0) ? "Standard" : "Vendor");
      FUNC0("Number of Supported Operation(s) : %d", MTP_Handle->info.devinfo.OperationsSupported_len);
      FUNC0("Number of Supported Events(s) : %d", MTP_Handle->info.devinfo.EventsSupported_len);  
      FUNC0("Number of Supported Proprieties : %d", MTP_Handle->info.devinfo.DevicePropertiesSupported_len); 
      FUNC0("Manufacturer : %s", MTP_Handle->info.devinfo.Manufacturer);
      FUNC0("Model : %s", MTP_Handle->info.devinfo.Model);       
      FUNC0("Device version : %s", MTP_Handle->info.devinfo.DeviceVersion); 
      FUNC0("Serial number : %s", MTP_Handle->info.devinfo.SerialNumber); 
      
      MTP_Handle->state = MTP_GETSTORAGEIDS; 
    }
    break;
    
  case MTP_GETSTORAGEIDS:
    status = FUNC3 (phost, &(MTP_Handle->info.storids));
    
    if(status == USBH_OK)
    {
      FUNC0("Number of storage ID items : %d", MTP_Handle->info.storids.n);
      for (idx  = 0; idx < MTP_Handle->info.storids.n; idx ++)
      {
        FUNC0("storage#%d ID : %x", idx, MTP_Handle->info.storids.Storage[idx]);
      }
      
      MTP_Handle->current_storage_unit = 0;
      MTP_Handle->state = MTP_GETSTORAGEINFO; 
    }
    break;
    
  case MTP_GETSTORAGEINFO:
    status = FUNC4 (phost, 
                                      MTP_Handle->info.storids.Storage[MTP_Handle->current_storage_unit], 
                                      &((MTP_Handle->info.storinfo)[MTP_Handle->current_storage_unit]));
    
    if(status == USBH_OK)
    {
      FUNC6("Volume#%lu: %s   [%s]", MTP_Handle->current_storage_unit,
                  MTP_Handle->info.storinfo[MTP_Handle->current_storage_unit].StorageDescription,
                  MTP_Handle->info.storinfo[MTP_Handle->current_storage_unit].VolumeLabel);
      if(++MTP_Handle->current_storage_unit >= MTP_Handle->info.storids.n)
      {
        MTP_Handle->state = MTP_IDLE;
        MTP_Handle->is_ready = 1;
        MTP_Handle->current_storage_unit = 0;
        MTP_Handle->params.CurrentStorageId = MTP_Handle->info.storids.Storage[0];
        
        FUNC6( "MTP Class initialized.");
        FUNC6("%s is default storage unit", MTP_Handle->info.storinfo[0].StorageDescription);
        phost->pUser(phost, HOST_USER_CLASS_ACTIVE); 
      }
    }
    break;
  
  case  MTP_IDLE:
    FUNC1(phost);
  default:
    status = USBH_OK;
    break;
  }
  return status;
}