
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int CStringGetDatum (char*) ;
 int DatumGetObjectId (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int regtypein ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
convert_type_name(text *typename)
{
 char *typname = text_to_cstring(typename);
 Oid oid;

 oid = DatumGetObjectId(DirectFunctionCall1(regtypein,
              CStringGetDatum(typname)));

 if (!OidIsValid(oid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type \"%s\" does not exist", typname)));

 return oid;
}
