
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int* Pipes; } ;
typedef TYPE_1__ USBH_HandleTypeDef ;



__attribute__((used)) static uint16_t USBH_GetFreePipe (USBH_HandleTypeDef *phost)
{
  uint8_t idx = 0;

  for (idx = 0 ; idx < 11 ; idx++)
  {
 if ((phost->Pipes[idx] & 0x8000) == 0)
 {
    return idx;
 }
  }
  return 0xFFFF;
}
