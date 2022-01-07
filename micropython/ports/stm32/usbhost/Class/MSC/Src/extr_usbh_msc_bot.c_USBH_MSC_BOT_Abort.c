
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int USBH_StatusTypeDef ;
struct TYPE_7__ {TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_8__ {int OutEp; int InEp; } ;
struct TYPE_6__ {TYPE_3__* pData; } ;
typedef TYPE_3__ MSC_HandleTypeDef ;




 int USBH_ClrFeature (TYPE_2__*,int ) ;
 int USBH_FAIL ;

__attribute__((used)) static USBH_StatusTypeDef USBH_MSC_BOT_Abort(USBH_HandleTypeDef *phost, uint8_t lun, uint8_t dir)
{
  USBH_StatusTypeDef status = USBH_FAIL;
  MSC_HandleTypeDef *MSC_Handle = phost->pActiveClass->pData;

  switch (dir)
  {
  case 129 :

    status = USBH_ClrFeature(phost, MSC_Handle->InEp);

    break;

  case 128 :

    status = USBH_ClrFeature(phost, MSC_Handle->OutEp);
    break;

  default:
    break;
  }
  return status;
}
