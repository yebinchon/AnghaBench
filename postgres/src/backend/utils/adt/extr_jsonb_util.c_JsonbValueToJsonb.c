
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ len; int data; } ;
struct TYPE_10__ {int rawScalar; int nElems; } ;
struct TYPE_12__ {TYPE_2__ binary; TYPE_1__ array; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ val; } ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonbParseState ;
typedef int Jsonb ;


 int Assert (int) ;
 scalar_t__ IsAJsonbScalar (TYPE_4__*) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 int VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int WJB_BEGIN_ARRAY ;
 int WJB_ELEM ;
 int WJB_END_ARRAY ;
 int * convertToJsonb (TYPE_4__*) ;
 scalar_t__ jbvArray ;
 scalar_t__ jbvBinary ;
 scalar_t__ jbvObject ;
 int memcpy (int ,int ,scalar_t__) ;
 int * palloc (scalar_t__) ;
 TYPE_4__* pushJsonbValue (int **,int ,TYPE_4__*) ;

Jsonb *
JsonbValueToJsonb(JsonbValue *val)
{
 Jsonb *out;

 if (IsAJsonbScalar(val))
 {

  JsonbParseState *pstate = ((void*)0);
  JsonbValue *res;
  JsonbValue scalarArray;

  scalarArray.type = jbvArray;
  scalarArray.val.array.rawScalar = 1;
  scalarArray.val.array.nElems = 1;

  pushJsonbValue(&pstate, WJB_BEGIN_ARRAY, &scalarArray);
  pushJsonbValue(&pstate, WJB_ELEM, val);
  res = pushJsonbValue(&pstate, WJB_END_ARRAY, ((void*)0));

  out = convertToJsonb(res);
 }
 else if (val->type == jbvObject || val->type == jbvArray)
 {
  out = convertToJsonb(val);
 }
 else
 {
  Assert(val->type == jbvBinary);
  out = palloc(VARHDRSZ + val->val.binary.len);
  SET_VARSIZE(out, VARHDRSZ + val->val.binary.len);
  memcpy(VARDATA(out), val->val.binary.data, val->val.binary.len);
 }

 return out;
}
