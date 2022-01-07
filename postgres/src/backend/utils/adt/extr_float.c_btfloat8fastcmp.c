
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int SortSupport ;
typedef int Datum ;


 int DatumGetFloat8 (int ) ;
 int float8_cmp_internal (int ,int ) ;

__attribute__((used)) static int
btfloat8fastcmp(Datum x, Datum y, SortSupport ssup)
{
 float8 arg1 = DatumGetFloat8(x);
 float8 arg2 = DatumGetFloat8(y);

 return float8_cmp_internal(arg1, arg2);
}
