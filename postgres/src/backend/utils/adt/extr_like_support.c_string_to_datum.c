
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int Datum ;


 int Assert (int ) ;
 scalar_t__ BYTEAOID ;
 int CStringGetDatum (char const*) ;
 int CStringGetTextDatum (char const*) ;
 int DirectFunctionCall1 (int ,int ) ;
 scalar_t__ NAMEOID ;
 int byteain ;
 int namein ;

__attribute__((used)) static Datum
string_to_datum(const char *str, Oid datatype)
{
 Assert(str != ((void*)0));





 if (datatype == NAMEOID)
  return DirectFunctionCall1(namein, CStringGetDatum(str));
 else if (datatype == BYTEAOID)
  return DirectFunctionCall1(byteain, CStringGetDatum(str));
 else
  return CStringGetTextDatum(str);
}
