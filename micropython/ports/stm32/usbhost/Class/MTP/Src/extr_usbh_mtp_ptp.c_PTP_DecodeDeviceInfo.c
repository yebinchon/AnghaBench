
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_14__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_11__ {int * data; } ;
struct TYPE_12__ {TYPE_2__ payload; } ;
struct TYPE_13__ {scalar_t__ iteration; TYPE_3__ data_container; } ;
struct TYPE_16__ {TYPE_4__ ptp; } ;
struct TYPE_15__ {int OperationsSupported_len; int EventsSupported_len; int DevicePropertiesSupported_len; int CaptureFormats_len; int ImageFormats_len; int SerialNumber; int DeviceVersion; int Model; int Manufacturer; int ImageFormats; int CaptureFormats; int DevicePropertiesSupported; int EventsSupported; int OperationsSupported; void* FunctionalMode; int VendorExtensionDesc; void* VendorExtensionVersion; int VendorExtensionID; void* StandardVersion; } ;
struct TYPE_10__ {TYPE_7__* pData; } ;
typedef TYPE_6__ PTP_DeviceInfoTypedef ;
typedef TYPE_7__ MTP_HandleTypeDef ;


 void* LE16 (int *) ;
 int LE32 (int *) ;
 void* PTP_GetArray16 (int*,int *,size_t) ;
 int PTP_GetString (int ,int *,int*) ;
 size_t PTP_di_FunctionalMode ;
 size_t PTP_di_OperationsSupported ;
 size_t PTP_di_StandardVersion ;
 size_t PTP_di_VendorExtensionDesc ;
 size_t PTP_di_VendorExtensionID ;
 size_t PTP_di_VendorExtensionVersion ;
 int USBH_DbgLog (char*) ;

__attribute__((used)) static void PTP_DecodeDeviceInfo (USBH_HandleTypeDef *phost, PTP_DeviceInfoTypedef *dev_info)
{
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  uint8_t *data = MTP_Handle->ptp.data_container.payload.data;
  uint32_t totallen;
  uint16_t len;


  USBH_DbgLog (" MTP device info size exceeds internal buffer size.               only available data are decoded.");


  if(MTP_Handle->ptp.iteration == 0)
  {
    dev_info->StandardVersion = LE16(&data[PTP_di_StandardVersion]);
    dev_info->VendorExtensionID = LE32(&data[PTP_di_VendorExtensionID]);
    dev_info->VendorExtensionVersion = LE16(&data[PTP_di_VendorExtensionVersion]);
    PTP_GetString(dev_info->VendorExtensionDesc, &data[PTP_di_VendorExtensionDesc], &len);

    totallen=len*2+1;
    dev_info->FunctionalMode = LE16(&data[PTP_di_FunctionalMode+totallen]);
    dev_info->OperationsSupported_len = PTP_GetArray16 ((uint16_t *)&dev_info->OperationsSupported,
                                                      data,
                                                      PTP_di_OperationsSupported+totallen);

    totallen=totallen+dev_info->OperationsSupported_len*sizeof(uint16_t)+sizeof(uint32_t);
    dev_info->EventsSupported_len = PTP_GetArray16 ((uint16_t *)&dev_info->EventsSupported,
                                                      data,
                                                      PTP_di_OperationsSupported+totallen);

    totallen=totallen+dev_info->EventsSupported_len*sizeof(uint16_t)+sizeof(uint32_t);
    dev_info->DevicePropertiesSupported_len = PTP_GetArray16 ((uint16_t *)&dev_info->DevicePropertiesSupported,
                                                      data,
                                                      PTP_di_OperationsSupported+totallen);

    totallen=totallen+dev_info->DevicePropertiesSupported_len*sizeof(uint16_t)+sizeof(uint32_t);

    dev_info->CaptureFormats_len = PTP_GetArray16 ((uint16_t *)&dev_info->CaptureFormats,
                                                      data,
                                                      PTP_di_OperationsSupported+totallen);

    totallen=totallen+dev_info->CaptureFormats_len*sizeof(uint16_t)+sizeof(uint32_t);
    dev_info->ImageFormats_len = PTP_GetArray16 ((uint16_t *)&dev_info->ImageFormats,
                                                      data,
                                                      PTP_di_OperationsSupported+totallen);

    totallen=totallen+dev_info->ImageFormats_len*sizeof(uint16_t)+sizeof(uint32_t);
    PTP_GetString(dev_info->Manufacturer, &data[PTP_di_OperationsSupported+totallen], &len);

    totallen+=len*2+1;
    PTP_GetString(dev_info->Model, &data[PTP_di_OperationsSupported+totallen], &len);

    totallen+=len*2+1;
    PTP_GetString(dev_info->DeviceVersion, &data[PTP_di_OperationsSupported+totallen], &len);

    totallen+=len*2+1;
    PTP_GetString(dev_info->SerialNumber, &data[PTP_di_OperationsSupported+totallen], &len);
  }
}
