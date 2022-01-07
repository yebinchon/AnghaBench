
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static uint8_t USBD_GetLen(uint8_t *buf)
{
    uint8_t len = 0;

    while (*buf != '\0')
    {
        len++;
        buf++;
    }

    return len;
}
