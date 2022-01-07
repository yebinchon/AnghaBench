
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int USBH_StatusTypeDef ;
struct TYPE_7__ {TYPE_1__* pActiveClass; int * pData; } ;
typedef TYPE_2__ USBH_HandleTypeDef ;
struct TYPE_6__ {int * pData; } ;


 int DeInitStateMachine (TYPE_2__*) ;
 int USBH_LL_Stop (TYPE_2__*) ;
 int USBH_OK ;

USBH_StatusTypeDef USBH_DeInit(USBH_HandleTypeDef *phost)
{
  DeInitStateMachine(phost);

  if(phost->pData != ((void*)0))
  {
    phost->pActiveClass->pData = ((void*)0);
    USBH_LL_Stop(phost);
  }

  return USBH_OK;
}
