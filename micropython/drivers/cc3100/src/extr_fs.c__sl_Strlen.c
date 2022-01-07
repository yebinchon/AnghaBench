
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _u8 ;
typedef scalar_t__ _u16 ;



_u16 _sl_Strlen(const _u8 *buffer)
{
    _u16 len = 0;
    if( buffer != ((void*)0) )
    {
      while(*buffer++) len++;
    }
    return len;
}
