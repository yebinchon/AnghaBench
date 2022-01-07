
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numeric; } ;
struct TYPE_6__ {TYPE_1__ val; int type; } ;
typedef int PyObject ;
typedef int Numeric ;
typedef TYPE_2__ JsonbValue ;
typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DatumGetNumeric (int ) ;
 int DirectFunctionCall3 (int ,int ,int ,int ) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int Int32GetDatum (int) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 char* PLyObject_AsString (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int jbvNumeric ;
 int numeric_in ;
 scalar_t__ numeric_is_nan (int ) ;
 int pfree (char*) ;

__attribute__((used)) static JsonbValue *
PLyNumber_ToJsonbValue(PyObject *obj, JsonbValue *jbvNum)
{
 Numeric num;
 char *str = PLyObject_AsString(obj);

 PG_TRY();
 {
  Datum numd;

  numd = DirectFunctionCall3(numeric_in,
           CStringGetDatum(str),
           ObjectIdGetDatum(InvalidOid),
           Int32GetDatum(-1));
  num = DatumGetNumeric(numd);
 }
 PG_CATCH();
 {
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     (errmsg("could not convert value \"%s\" to jsonb", str))));
 }
 PG_END_TRY();

 pfree(str);






 if (numeric_is_nan(num))
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     (errmsg("cannot convert NaN to jsonb"))));

 jbvNum->type = jbvNumeric;
 jbvNum->val.numeric = num;

 return jbvNum;
}
