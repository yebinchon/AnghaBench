
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_11__ {scalar_t__ is_connected; } ;
struct TYPE_13__ {size_t Timer; TYPE_3__ device; TYPE_4__* pActiveClass; } ;
typedef TYPE_5__ USBH_HandleTypeDef ;
struct TYPE_9__ {size_t n; int * Storage; } ;
struct TYPE_10__ {TYPE_1__ storids; } ;
struct TYPE_14__ {TYPE_2__ info; scalar_t__ is_ready; } ;
struct TYPE_12__ {TYPE_6__* pData; } ;
typedef int PTP_ObjectHandlesTypedef ;
typedef TYPE_6__ MTP_HandleTypeDef ;


 int USBH_BUSY ;
 int USBH_FAIL ;
 int USBH_PTP_GetObjectHandles (TYPE_5__*,int ,size_t,size_t,int *) ;

USBH_StatusTypeDef USBH_MTP_GetObjectHandles (USBH_HandleTypeDef *phost,
                                           uint32_t storage_idx,
                                           uint32_t objectformatcode,
                                           uint32_t associationOH,
                                           PTP_ObjectHandlesTypedef* objecthandles)
{
  USBH_StatusTypeDef status = USBH_FAIL;
  MTP_HandleTypeDef *MTP_Handle = phost->pActiveClass->pData;
  uint32_t timeout = phost->Timer + 5000;

  if((storage_idx < MTP_Handle->info.storids.n) && (MTP_Handle->is_ready))
  {
    while ((status = USBH_PTP_GetObjectHandles (phost,
                                                MTP_Handle->info.storids.Storage[storage_idx],
                                                objectformatcode,
                                                associationOH,
                                                objecthandles)) == USBH_BUSY)
    {
      if((phost->Timer > timeout) || (phost->device.is_connected == 0))
      {
        return USBH_FAIL;
      }
    }
  }
  return status;
}
