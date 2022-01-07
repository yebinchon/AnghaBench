
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* UINT8 ;
typedef int UINT32 ;



UINT8* UINT32_TO_STREAM_f (UINT8 *p, UINT32 u32)
{
 *(p)++ = (UINT8)(u32);
 *(p)++ = (UINT8)((u32) >> 8);
 *(p)++ = (UINT8)((u32) >> 16);
 *(p)++ = (UINT8)((u32) >> 24);
 return p;
}
