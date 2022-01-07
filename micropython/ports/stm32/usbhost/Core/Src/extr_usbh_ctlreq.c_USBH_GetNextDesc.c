
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int bLength; } ;
typedef TYPE_1__ USBH_DescHeader_t ;



USBH_DescHeader_t *USBH_GetNextDesc (uint8_t *pbuf, uint16_t *ptr)
{
  USBH_DescHeader_t *pnext;

  *ptr += ((USBH_DescHeader_t *)pbuf)->bLength;
  pnext = (USBH_DescHeader_t *)((uint8_t *)pbuf + ((USBH_DescHeader_t *)pbuf)->bLength);


  return(pnext);
}
