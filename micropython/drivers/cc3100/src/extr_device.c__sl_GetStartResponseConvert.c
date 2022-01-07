
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _u32 ;
typedef int _i16 ;


 int * StartResponseLUT ;

_i16 _sl_GetStartResponseConvert(_u32 Status)
{
    return (_i16)StartResponseLUT[Status & 0x7];
}
