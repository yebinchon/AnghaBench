
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;
typedef int Datum ;


 scalar_t__ DatumGetInt16 (int ) ;
 int murmurhash32 (int ) ;

__attribute__((used)) static uint32
int2hashfast(Datum datum)
{
 return murmurhash32((int32) DatumGetInt16(datum));
}
