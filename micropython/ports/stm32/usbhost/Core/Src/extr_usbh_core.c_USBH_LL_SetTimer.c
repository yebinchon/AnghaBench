
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int Timer; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;



void USBH_LL_SetTimer (USBH_HandleTypeDef *phost, uint32_t time)
{
  phost->Timer = time;
}
