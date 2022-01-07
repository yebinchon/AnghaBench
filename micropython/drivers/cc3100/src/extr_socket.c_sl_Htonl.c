
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _u32 ;
typedef int _i8 ;



_u32 sl_Htonl( _u32 val )
{
  _u32 i = 1;
  _i8 *p = (_i8 *)&i;
  if (p[0] == 1)
  {
    p[0] = ((_i8* )&val)[3];
    p[1] = ((_i8* )&val)[2];
    p[2] = ((_i8* )&val)[1];
    p[3] = ((_i8* )&val)[0];
    return i;
  }
  else
  {
    return val;
  }
}
