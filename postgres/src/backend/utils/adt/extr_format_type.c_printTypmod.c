
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef scalar_t__ Oid ;


 int Assert (int) ;
 char* DatumGetCString (int ) ;
 int Int32GetDatum (scalar_t__) ;
 scalar_t__ InvalidOid ;
 int OidFunctionCall1 (scalar_t__,int ) ;
 char* psprintf (char*,char const*,...) ;

__attribute__((used)) static char *
printTypmod(const char *typname, int32 typmod, Oid typmodout)
{
 char *res;


 Assert(typmod >= 0);

 if (typmodout == InvalidOid)
 {

  res = psprintf("%s(%d)", typname, (int) typmod);
 }
 else
 {

  char *tmstr;

  tmstr = DatumGetCString(OidFunctionCall1(typmodout,
             Int32GetDatum(typmod)));
  res = psprintf("%s%s", typname, tmstr);
 }

 return res;
}
