
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef char uint16_t ;


 int USBD_GetLen (char*) ;
 char USB_DESC_TYPE_STRING ;

void USBD_GetString(uint8_t *desc, uint8_t *unicode, uint16_t *len)
{
  uint8_t idx = 0;

  if (desc != ((void*)0))
  {
    *len = USBD_GetLen(desc) * 2 + 2;
    unicode[idx++] = *len;
    unicode[idx++] = USB_DESC_TYPE_STRING;

    while (*desc != '\0')
    {
      unicode[idx++] = *desc++;
      unicode[idx++] = 0x00;
    }
  }
}
