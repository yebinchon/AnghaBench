
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int JsonbTypeCategory ;
typedef int JsonbInState ;
typedef int Datum ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int JSONBTYPE_NULL ;
 int datum_to_jsonb (int ,int,int *,int ,scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int jsonb_categorize_type (scalar_t__,int *,scalar_t__*) ;

__attribute__((used)) static void
add_jsonb(Datum val, bool is_null, JsonbInState *result,
    Oid val_type, bool key_scalar)
{
 JsonbTypeCategory tcategory;
 Oid outfuncoid;

 if (val_type == InvalidOid)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("could not determine input data type")));

 if (is_null)
 {
  tcategory = JSONBTYPE_NULL;
  outfuncoid = InvalidOid;
 }
 else
  jsonb_categorize_type(val_type,
         &tcategory, &outfuncoid);

 datum_to_jsonb(val, is_null, result, tcategory, outfuncoid, key_scalar);
}
