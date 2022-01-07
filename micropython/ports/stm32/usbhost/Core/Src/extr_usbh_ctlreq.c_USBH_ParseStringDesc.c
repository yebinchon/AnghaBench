
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int USB_DESC_TYPE_STRING ;

__attribute__((used)) static void USBH_ParseStringDesc (uint8_t* psrc,
                                  uint8_t* pdest,
                                  uint16_t length)
{
  uint16_t strlength;
  uint16_t idx;
  if ( psrc[1] == USB_DESC_TYPE_STRING)
  {


    strlength = ( ( (psrc[0]-2) <= length) ? (psrc[0]-2) :length);
    psrc += 2;

    for (idx = 0; idx < strlength; idx+=2 )
    {
      *pdest = psrc[idx];
      pdest++;
    }
    *pdest = 0;
  }
}
