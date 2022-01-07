
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef int JsonTypeCategory ;
typedef int Datum ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int JSONTYPE_NULL ;
 int datum_to_json (int ,int,int ,int ,scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int json_categorize_type (scalar_t__,int *,scalar_t__*) ;

__attribute__((used)) static void
add_json(Datum val, bool is_null, StringInfo result,
   Oid val_type, bool key_scalar)
{
 JsonTypeCategory tcategory;
 Oid outfuncoid;

 if (val_type == InvalidOid)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("could not determine input data type")));

 if (is_null)
 {
  tcategory = JSONTYPE_NULL;
  outfuncoid = InvalidOid;
 }
 else
  json_categorize_type(val_type,
        &tcategory, &outfuncoid);

 datum_to_json(val, is_null, result, tcategory, outfuncoid, key_scalar);
}
