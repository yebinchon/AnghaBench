
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef int TypeCat ;
struct TYPE_5__ {int domain; int composite; int array; } ;
struct TYPE_6__ {scalar_t__ typid; scalar_t__ typmod; int typcat; TYPE_1__ io; int scalar_io; } ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef int JsValue ;
typedef int Datum ;
typedef TYPE_2__ ColumnIOData ;


 int * DatumGetHeapTupleHeader (int ) ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 int JsValueIsNull (int *) ;
 scalar_t__ JsValueIsString (int *) ;





 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int populate_array (int *,char const*,int ,int *) ;
 int populate_composite (int *,scalar_t__,char const*,int ,int *,int *,int) ;
 int populate_domain (int *,scalar_t__,char const*,int ,int *,int) ;
 int populate_scalar (int *,scalar_t__,scalar_t__,int *) ;
 int prepare_column_cache (TYPE_2__*,scalar_t__,scalar_t__,int ,int) ;

__attribute__((used)) static Datum
populate_record_field(ColumnIOData *col,
       Oid typid,
       int32 typmod,
       const char *colname,
       MemoryContext mcxt,
       Datum defaultval,
       JsValue *jsv,
       bool *isnull)
{
 TypeCat typcat;

 check_stack_depth();





 if (col->typid != typid || col->typmod != typmod)
  prepare_column_cache(col, typid, typmod, mcxt, 1);

 *isnull = JsValueIsNull(jsv);

 typcat = col->typcat;


 if (JsValueIsString(jsv) &&
  (typcat == 132 ||
   typcat == 131 ||
   typcat == 130))
  typcat = 128;


 if (*isnull &&
  typcat != 129 &&
  typcat != 130)
  return (Datum) 0;

 switch (typcat)
 {
  case 128:
   return populate_scalar(&col->scalar_io, typid, typmod, jsv);

  case 132:
   return populate_array(&col->io.array, colname, mcxt, jsv);

  case 131:
  case 130:
   return populate_composite(&col->io.composite, typid,
           colname, mcxt,
           DatumGetPointer(defaultval)
           ? DatumGetHeapTupleHeader(defaultval)
           : ((void*)0),
           jsv, *isnull);

  case 129:
   return populate_domain(&col->io.domain, typid, colname, mcxt,
           jsv, *isnull);

  default:
   elog(ERROR, "unrecognized type category '%c'", typcat);
   return (Datum) 0;
 }
}
