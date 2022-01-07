
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _u16 ;
typedef int _i8 ;
typedef int _i16 ;



_u16 sl_Htons( _u16 val )
{
  _i16 i = 1;
  _i8 *p = (_i8 *)&i;
  if (p[0] == 1)
  {
    p[0] = ((_i8* )&val)[1];
    p[1] = ((_i8* )&val)[0];
    return i;
  }
  else
  {
    return val;
  }
}
