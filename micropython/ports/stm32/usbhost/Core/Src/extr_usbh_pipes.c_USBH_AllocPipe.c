
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int* Pipes; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;


 int USBH_GetFreePipe (TYPE_1__*) ;

uint8_t USBH_AllocPipe (USBH_HandleTypeDef *phost, uint8_t ep_addr)
{
  uint16_t pipe;

  pipe = USBH_GetFreePipe(phost);

  if (pipe != 0xFFFF)
  {
 phost->Pipes[pipe] = 0x8000 | ep_addr;
  }
  return pipe;
}
