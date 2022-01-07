
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef size_t uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_21__ {int (* pUser ) (TYPE_4__*,int ) ;TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_23__ {int StorageDescription; int VolumeLabel; } ;
struct TYPE_16__ {size_t n; int * Storage; } ;
struct TYPE_17__ {int VendorExtensionID; int SerialNumber; int DeviceVersion; int Model; int Manufacturer; int DevicePropertiesSupported_len; int EventsSupported_len; int OperationsSupported_len; int FunctionalMode; int StandardVersion; } ;
struct TYPE_20__ {TYPE_9__* storinfo; TYPE_11__ storids; TYPE_13__ devinfo; } ;
struct TYPE_19__ {int CurrentStorageId; } ;
struct TYPE_22__ {int state; size_t current_storage_unit; int is_ready; TYPE_3__ info; TYPE_2__ params; } ;
struct TYPE_18__ {TYPE_5__* pData; } ;
typedef TYPE_5__ MTP_HandleTypeDef ;


 int HOST_USER_CLASS_ACTIVE ;





 int USBH_BUSY ;
 int USBH_DbgLog (char*,...) ;
 int USBH_MTP_Events (TYPE_4__*) ;
 int USBH_OK ;
 int USBH_PTP_GetDeviceInfo (TYPE_4__*,TYPE_13__*) ;
 int USBH_PTP_GetStorageIds (TYPE_4__*,TYPE_11__*) ;
 int USBH_PTP_GetStorageInfo (TYPE_4__*,int ,TYPE_9__*) ;
 int USBH_PTP_OpenSession (TYPE_4__*,int) ;
 int USBH_UsrLog (char*,...) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MTP_Process (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_BUSY;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  uint32_t idx = 0;

  switch(MTP_Handle->state)
  {
  case 128:

    status = USBH_PTP_OpenSession (phost, 1);

    if(status == USBH_OK)
    {
      USBH_UsrLog("MTP Session #0 Opened");
      MTP_Handle->state = 132;
    }
    break;

  case 132:
    status = USBH_PTP_GetDeviceInfo (phost, &(MTP_Handle->info.devinfo));

    if(status == USBH_OK)
    {
      USBH_DbgLog(">>>>> MTP Device Information");
      USBH_DbgLog("Standard version : %x", MTP_Handle->info.devinfo.StandardVersion);
      USBH_DbgLog("Vendor ExtID : %s", (MTP_Handle->info.devinfo.VendorExtensionID == 6)?"MTP": "NOT SUPPORTED");
      USBH_DbgLog("Functional mode : %s", (MTP_Handle->info.devinfo.FunctionalMode == 0) ? "Standard" : "Vendor");
      USBH_DbgLog("Number of Supported Operation(s) : %d", MTP_Handle->info.devinfo.OperationsSupported_len);
      USBH_DbgLog("Number of Supported Events(s) : %d", MTP_Handle->info.devinfo.EventsSupported_len);
      USBH_DbgLog("Number of Supported Proprieties : %d", MTP_Handle->info.devinfo.DevicePropertiesSupported_len);
      USBH_DbgLog("Manufacturer : %s", MTP_Handle->info.devinfo.Manufacturer);
      USBH_DbgLog("Model : %s", MTP_Handle->info.devinfo.Model);
      USBH_DbgLog("Device version : %s", MTP_Handle->info.devinfo.DeviceVersion);
      USBH_DbgLog("Serial number : %s", MTP_Handle->info.devinfo.SerialNumber);

      MTP_Handle->state = 131;
    }
    break;

  case 131:
    status = USBH_PTP_GetStorageIds (phost, &(MTP_Handle->info.storids));

    if(status == USBH_OK)
    {
      USBH_DbgLog("Number of storage ID items : %d", MTP_Handle->info.storids.n);
      for (idx = 0; idx < MTP_Handle->info.storids.n; idx ++)
      {
        USBH_DbgLog("storage#%d ID : %x", idx, MTP_Handle->info.storids.Storage[idx]);
      }

      MTP_Handle->current_storage_unit = 0;
      MTP_Handle->state = 130;
    }
    break;

  case 130:
    status = USBH_PTP_GetStorageInfo (phost,
                                      MTP_Handle->info.storids.Storage[MTP_Handle->current_storage_unit],
                                      &((MTP_Handle->info.storinfo)[MTP_Handle->current_storage_unit]));

    if(status == USBH_OK)
    {
      USBH_UsrLog("Volume#%lu: %s   [%s]", MTP_Handle->current_storage_unit,
                  MTP_Handle->info.storinfo[MTP_Handle->current_storage_unit].StorageDescription,
                  MTP_Handle->info.storinfo[MTP_Handle->current_storage_unit].VolumeLabel);
      if(++MTP_Handle->current_storage_unit >= MTP_Handle->info.storids.n)
      {
        MTP_Handle->state = 129;
        MTP_Handle->is_ready = 1;
        MTP_Handle->current_storage_unit = 0;
        MTP_Handle->params.CurrentStorageId = MTP_Handle->info.storids.Storage[0];

        USBH_UsrLog( "MTP Class initialized.");
        USBH_UsrLog("%s is default storage unit", MTP_Handle->info.storinfo[0].StorageDescription);
        phost->pUser(phost, HOST_USER_CLASS_ACTIVE);
      }
    }
    break;

  case 129:
    USBH_MTP_Events(phost);
  default:
    status = USBH_OK;
    break;
  }
  return status;
}
