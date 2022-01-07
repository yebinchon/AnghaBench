
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 int DEFAULT_COLLATION_OID ;
 int DatumGetInt32 (int ) ;
 int DirectFunctionCall1Coll (int ,int ,int ) ;
 int hashtext ;

__attribute__((used)) static uint32
texthashfast(Datum datum)
{

 return DatumGetInt32(DirectFunctionCall1Coll(hashtext, DEFAULT_COLLATION_OID, datum));
}
