
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_10__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_4__ USBH_HandleTypeDef ;
struct TYPE_8__ {size_t n; } ;
struct TYPE_9__ {int * storinfo; TYPE_2__ storids; } ;
struct TYPE_11__ {TYPE_3__ info; scalar_t__ is_ready; } ;
struct TYPE_7__ {TYPE_5__* pData; } ;
typedef int MTP_StorageInfoTypedef ;
typedef TYPE_5__ MTP_HandleTypeDef ;


 int USBH_FAIL ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_MTP_GetStorageInfo (USBH_HandleTypeDef *phost, uint8_t storage_idx, MTP_StorageInfoTypedef *info)
{
  USBH_StatusTypeDef status = USBH_FAIL;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;

  if((storage_idx < MTP_Handle->info.storids.n) && (MTP_Handle->is_ready))
  {
    *info = MTP_Handle->info.storinfo[storage_idx];
    status = USBH_OK;
  }
  return status;
}
