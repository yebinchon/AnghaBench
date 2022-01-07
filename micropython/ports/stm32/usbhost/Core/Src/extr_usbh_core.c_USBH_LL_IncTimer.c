
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Timer; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;


 int USBH_HandleSof (TYPE_1__*) ;

void USBH_LL_IncTimer (USBH_HandleTypeDef *phost)
{
  phost->Timer ++;
  USBH_HandleSof(phost);
}
