
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DEFAULT_COLLATION_OID ;
 int DatumGetBool (int ) ;
 int DirectFunctionCall2Coll (int ,int ,int ,int ) ;
 int texteq ;

__attribute__((used)) static bool
texteqfast(Datum a, Datum b)
{




 return DatumGetBool(DirectFunctionCall2Coll(texteq, DEFAULT_COLLATION_OID, a, b));
}
