
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float4 ;
typedef int SortSupport ;
typedef int Datum ;


 int DatumGetFloat4 (int ) ;
 int float4_cmp_internal (int ,int ) ;

__attribute__((used)) static int
btfloat4fastcmp(Datum x, Datum y, SortSupport ssup)
{
 float4 arg1 = DatumGetFloat4(x);
 float4 arg2 = DatumGetFloat4(y);

 return float4_cmp_internal(arg1, arg2);
}
