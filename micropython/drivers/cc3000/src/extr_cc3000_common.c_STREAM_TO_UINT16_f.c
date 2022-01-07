
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
typedef scalar_t__ CHAR ;



UINT16 STREAM_TO_UINT16_f(CHAR* p, UINT16 offset)
{
 return (UINT16)((UINT16)((UINT16)
  (*(p + offset + 1)) << 8) + (UINT16)(*(p + offset)));
}
