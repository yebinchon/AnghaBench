
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int int32 ;
struct TYPE_28__ {int root; } ;
struct TYPE_23__ {int len; int * data; } ;
struct TYPE_22__ {int len; int val; } ;
struct TYPE_24__ {TYPE_4__ binary; int numeric; scalar_t__ boolean; TYPE_3__ string; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_5__ val; } ;
struct TYPE_26__ {int typioparam; int typiofunc; } ;
struct TYPE_25__ {char* data; } ;
struct TYPE_20__ {int len; char* str; scalar_t__ type; } ;
struct TYPE_21__ {TYPE_8__* jsonb; TYPE_1__ json; } ;
struct TYPE_19__ {TYPE_2__ val; scalar_t__ is_json; } ;
typedef TYPE_6__ StringInfoData ;
typedef TYPE_7__ ScalarIOData ;
typedef scalar_t__ Oid ;
typedef TYPE_8__ JsonbValue ;
typedef TYPE_9__ Jsonb ;
typedef TYPE_10__ JsValue ;
typedef int Datum ;


 int Assert (char*) ;
 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int InputFunctionCall (int *,char*,int ,int ) ;
 scalar_t__ JSONBOID ;
 scalar_t__ JSONOID ;
 scalar_t__ JSON_TOKEN_STRING ;
 int JsonbPGetDatum (TYPE_9__*) ;
 char* JsonbToCString (int *,int *,int ) ;
 TYPE_9__* JsonbValueToJsonb (TYPE_8__*) ;
 int PointerGetDatum (int ) ;
 int VARSIZE (TYPE_9__*) ;
 int elog (int ,char*,int) ;
 int escape_json (TYPE_6__*,char*) ;
 int initStringInfo (TYPE_6__*) ;
 scalar_t__ jbvBinary ;
 scalar_t__ jbvBool ;
 scalar_t__ jbvNumeric ;
 scalar_t__ jbvString ;
 int memcpy (char*,char*,int) ;
 int numeric_out ;
 char* palloc (int) ;
 int pfree (char*) ;
 char* pnstrdup (int ,int ) ;
 char* pstrdup (char*) ;

__attribute__((used)) static Datum
populate_scalar(ScalarIOData *io, Oid typid, int32 typmod, JsValue *jsv)
{
 Datum res;
 char *str = ((void*)0);
 char *json = ((void*)0);

 if (jsv->is_json)
 {
  int len = jsv->val.json.len;

  json = jsv->val.json.str;
  Assert(json);
  if (len >= 0)
  {

   str = palloc(len + 1 * sizeof(char));
   memcpy(str, json, len);
   str[len] = '\0';
  }
  else
   str = json;


  if ((typid == JSONOID || typid == JSONBOID) &&
   jsv->val.json.type == JSON_TOKEN_STRING)
  {
   StringInfoData buf;

   initStringInfo(&buf);
   escape_json(&buf, str);

   if (str != json)
    pfree(str);
   str = buf.data;
  }
 }
 else
 {
  JsonbValue *jbv = jsv->val.jsonb;

  if (typid == JSONBOID)
  {
   Jsonb *jsonb = JsonbValueToJsonb(jbv);

   return JsonbPGetDatum(jsonb);
  }

  else if (typid == JSONOID && jbv->type != jbvBinary)
  {




   Jsonb *jsonb = JsonbValueToJsonb(jbv);

   str = JsonbToCString(((void*)0), &jsonb->root, VARSIZE(jsonb));
  }
  else if (jbv->type == jbvString)
   str = pnstrdup(jbv->val.string.val, jbv->val.string.len);
  else if (jbv->type == jbvBool)
   str = pstrdup(jbv->val.boolean ? "true" : "false");
  else if (jbv->type == jbvNumeric)
   str = DatumGetCString(DirectFunctionCall1(numeric_out,
               PointerGetDatum(jbv->val.numeric)));
  else if (jbv->type == jbvBinary)
   str = JsonbToCString(((void*)0), jbv->val.binary.data,
         jbv->val.binary.len);
  else
   elog(ERROR, "unrecognized jsonb type: %d", (int) jbv->type);
 }

 res = InputFunctionCall(&io->typiofunc, str, io->typioparam, typmod);


 if (str != json)
  pfree(str);

 return res;
}
