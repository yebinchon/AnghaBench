
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_11__ {int val; int len; } ;
struct TYPE_12__ {TYPE_1__ string; void* numeric; } ;
struct TYPE_13__ {TYPE_2__ val; void* type; } ;
typedef int SV ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbParseState ;
typedef int IV ;
typedef int HV ;
typedef int AV ;


 TYPE_3__* AV_to_JsonbValue (int *,int **) ;
 int CStringGetDatum (char const*) ;
 void* DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall3 (int ,int ,int ,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int Float8GetDatum (double) ;
 TYPE_3__* HV_to_JsonbValue (int *,int **) ;
 int Int32GetDatum (int) ;
 int Int64GetDatum (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;


 int SvIOK (int *) ;
 int SvIV (int *) ;
 int SvNOK (int *) ;
 double SvNV (int *) ;
 int SvOK (int *) ;
 int SvPOK (int *) ;
 char* SvPV_nolen (int *) ;
 scalar_t__ SvROK (int *) ;
 int * SvRV (int *) ;
 int SvTYPE (int *) ;
 int SvUOK (int *) ;
 int WJB_ELEM ;
 int WJB_VALUE ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int float8_numeric ;
 int int8_numeric ;
 int isinf (double) ;
 int isnan (double) ;
 void* jbvNull ;
 void* jbvNumeric ;
 void* jbvString ;
 TYPE_3__* memcpy (int ,TYPE_3__*,int) ;
 int numeric_in ;
 int palloc (int) ;
 TYPE_3__* pushJsonbValue (int **,int ,TYPE_3__*) ;
 int strlen (int ) ;
 int sv2cstr (int *) ;

__attribute__((used)) static JsonbValue *
SV_to_JsonbValue(SV *in, JsonbParseState **jsonb_state, bool is_elem)
{
 dTHX;
 JsonbValue out;


 while (SvROK(in))
  in = SvRV(in);

 switch (SvTYPE(in))
 {
  case 129:
   return AV_to_JsonbValue((AV *) in, jsonb_state);

  case 128:
   return HV_to_JsonbValue((HV *) in, jsonb_state);

  default:
   if (!SvOK(in))
   {
    out.type = jbvNull;
   }
   else if (SvUOK(in))
   {






    const char *strval = SvPV_nolen(in);

    out.type = jbvNumeric;
    out.val.numeric =
     DatumGetNumeric(DirectFunctionCall3(numeric_in,
              CStringGetDatum(strval),
              ObjectIdGetDatum(InvalidOid),
              Int32GetDatum(-1)));
   }
   else if (SvIOK(in))
   {
    IV ival = SvIV(in);

    out.type = jbvNumeric;
    out.val.numeric =
     DatumGetNumeric(DirectFunctionCall1(int8_numeric,
              Int64GetDatum((int64) ival)));
   }
   else if (SvNOK(in))
   {
    double nval = SvNV(in);
    if (isinf(nval))
     ereport(ERROR,
       (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
        (errmsg("cannot convert infinity to jsonb"))));
    if (isnan(nval))
     ereport(ERROR,
       (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
        (errmsg("cannot convert NaN to jsonb"))));

    out.type = jbvNumeric;
    out.val.numeric =
     DatumGetNumeric(DirectFunctionCall1(float8_numeric,
              Float8GetDatum(nval)));
   }
   else if (SvPOK(in))
   {
    out.type = jbvString;
    out.val.string.val = sv2cstr(in);
    out.val.string.len = strlen(out.val.string.val);
   }
   else
   {




    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       (errmsg("cannot transform this Perl type to jsonb"))));
    return ((void*)0);
   }
 }


 return *jsonb_state
  ? pushJsonbValue(jsonb_state, is_elem ? WJB_ELEM : WJB_VALUE, &out)
  : memcpy(palloc(sizeof(JsonbValue)), &out, sizeof(JsonbValue));
}
