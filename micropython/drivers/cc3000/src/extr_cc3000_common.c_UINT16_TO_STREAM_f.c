
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* UINT8 ;
typedef int UINT16 ;



UINT8* UINT16_TO_STREAM_f (UINT8 *p, UINT16 u16)
{
 *(p)++ = (UINT8)(u16);
 *(p)++ = (UINT8)((u16) >> 8);
 return p;
}
