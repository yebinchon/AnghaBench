
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ USBH_StatusTypeDef ;
struct TYPE_8__ {int (* pUser ) (TYPE_2__*,int ) ;TYPE_1__* pActiveClass; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_9__ {int LineCoding; } ;
struct TYPE_7__ {TYPE_3__* pData; } ;
typedef TYPE_3__ CDC_HandleTypeDef ;


 scalar_t__ GetLineCoding (TYPE_2__*,int *) ;
 int HOST_USER_CLASS_ACTIVE ;
 scalar_t__ USBH_FAIL ;
 scalar_t__ USBH_OK ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static USBH_StatusTypeDef USBH_CDC_ClassRequest (USBH_HandleTypeDef *phost)
{
  USBH_StatusTypeDef status = USBH_FAIL ;
  CDC_HandleTypeDef *CDC_Handle = phost->pActiveClass->pData;


  status = GetLineCoding(phost, &CDC_Handle->LineCoding);
  if(status == USBH_OK)
  {
    phost->pUser(phost, HOST_USER_CLASS_ACTIVE);
  }
  return status;
}
