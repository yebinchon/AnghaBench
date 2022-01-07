
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int hashoidvector ;

__attribute__((used)) static uint32
oidvectorhashfast(Datum datum)
{
 return DatumGetInt32(DirectFunctionCall1(hashoidvector, datum));
}
