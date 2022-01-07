
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int text ;
typedef int sem ;
struct TYPE_18__ {int rawScalar; int nElems; } ;
struct TYPE_19__ {char* val; void* len; } ;
struct TYPE_20__ {TYPE_1__ array; TYPE_2__ string; int numeric; int boolean; } ;
struct TYPE_21__ {int type; TYPE_3__ val; } ;
struct TYPE_25__ {TYPE_4__ contVal; } ;
struct TYPE_24__ {int object_field_start; int scalar; int array_end; int object_end; int array_start; int object_start; void* semstate; } ;
struct TYPE_23__ {int root; } ;
struct TYPE_22__ {TYPE_8__* parseState; void* res; } ;
typedef int Oid ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonbTypeCategory ;
typedef int JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef TYPE_5__ JsonbInState ;
typedef TYPE_6__ Jsonb ;
typedef TYPE_7__ JsonSemAction ;
typedef int JsonLexContext ;
typedef int Datum ;


 int Assert (int) ;
 int CStringGetDatum (char*) ;
 int DATEOID ;
 int DatumGetBool (int ) ;
 TYPE_6__* DatumGetJsonbP (int ) ;
 int DatumGetNumeric (int ) ;
 int * DatumGetTextPP (int ) ;
 int DirectFunctionCall3 (int ,int ,int ,int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int Int32GetDatum (int) ;
 int InvalidOid ;
 int JB_ROOT_IS_SCALAR (TYPE_6__*) ;
 void* JsonEncodeDateTime (int *,int ,int ,int *) ;
 int * JsonbIteratorInit (int *) ;
 int JsonbIteratorNext (int **,TYPE_4__*,int) ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall1 (int ,int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int TIMESTAMPOID ;
 int TIMESTAMPTZOID ;
 int WJB_BEGIN_ARRAY ;
 int WJB_BEGIN_OBJECT ;
 int WJB_DONE ;
 int WJB_ELEM ;
 int WJB_END_ARRAY ;
 int WJB_END_OBJECT ;
 int WJB_KEY ;
 int WJB_VALUE ;
 int array_to_jsonb_internal (int ,TYPE_5__*) ;
 void* checkStringLen (void*) ;
 int check_stack_depth () ;
 int composite_to_jsonb (int ,TYPE_5__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

 int jbvBool ;
 int jbvNull ;
 int jbvNumeric ;

 void* jbvString ;
 int jsonb_in_array_end ;
 int jsonb_in_array_start ;
 int jsonb_in_object_end ;
 int jsonb_in_object_field_start ;
 int jsonb_in_object_start ;
 int jsonb_in_scalar ;
 int * makeJsonLexContext (int *,int) ;
 int memset (TYPE_7__*,int ,int) ;
 int numeric_in ;
 int pfree (char*) ;
 int pg_parse_json (int *,TYPE_7__*) ;
 void* pushJsonbValue (TYPE_8__**,int ,TYPE_4__*) ;
 int * strchr (char*,char) ;
 void* strlen (char*) ;

__attribute__((used)) static void
datum_to_jsonb(Datum val, bool is_null, JsonbInState *result,
      JsonbTypeCategory tcategory, Oid outfuncoid,
      bool key_scalar)
{
 char *outputstr;
 bool numeric_error;
 JsonbValue jb;
 bool scalar_jsonb = 0;

 check_stack_depth();


 if (is_null)
 {
  Assert(!key_scalar);
  jb.type = jbvNull;
 }
 else if (key_scalar &&
    (tcategory == 139 ||
     tcategory == 137 ||
     tcategory == 135 ||
     tcategory == 134 ||
     tcategory == 133))
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("key value must be scalar, not array, composite, or json")));
 }
 else
 {
  if (tcategory == 133)
   val = OidFunctionCall1(outfuncoid, val);

  switch (tcategory)
  {
   case 139:
    array_to_jsonb_internal(val, result);
    break;
   case 137:
    composite_to_jsonb(val, result);
    break;
   case 138:
    if (key_scalar)
    {
     outputstr = DatumGetBool(val) ? "true" : "false";
     jb.type = jbvString;
     jb.val.string.len = strlen(outputstr);
     jb.val.string.val = outputstr;
    }
    else
    {
     jb.type = jbvBool;
     jb.val.boolean = DatumGetBool(val);
    }
    break;
   case 132:
    outputstr = OidOutputFunctionCall(outfuncoid, val);
    if (key_scalar)
    {

     jb.type = jbvString;
     jb.val.string.len = strlen(outputstr);
     jb.val.string.val = outputstr;
    }
    else
    {





     numeric_error = (strchr(outputstr, 'N') != ((void*)0) ||
          strchr(outputstr, 'n') != ((void*)0));
     if (!numeric_error)
     {
      Datum numd;

      jb.type = jbvNumeric;
      numd = DirectFunctionCall3(numeric_in,
               CStringGetDatum(outputstr),
               ObjectIdGetDatum(InvalidOid),
               Int32GetDatum(-1));
      jb.val.numeric = DatumGetNumeric(numd);
      pfree(outputstr);
     }
     else
     {
      jb.type = jbvString;
      jb.val.string.len = strlen(outputstr);
      jb.val.string.val = outputstr;
     }
    }
    break;
   case 136:
    jb.type = jbvString;
    jb.val.string.val = JsonEncodeDateTime(((void*)0), val,
                DATEOID, ((void*)0));
    jb.val.string.len = strlen(jb.val.string.val);
    break;
   case 131:
    jb.type = jbvString;
    jb.val.string.val = JsonEncodeDateTime(((void*)0), val,
                TIMESTAMPOID, ((void*)0));
    jb.val.string.len = strlen(jb.val.string.val);
    break;
   case 130:
    jb.type = jbvString;
    jb.val.string.val = JsonEncodeDateTime(((void*)0), val,
                TIMESTAMPTZOID, ((void*)0));
    jb.val.string.len = strlen(jb.val.string.val);
    break;
   case 133:
   case 135:
    {

     JsonLexContext *lex;
     JsonSemAction sem;
     text *json = DatumGetTextPP(val);

     lex = makeJsonLexContext(json, 1);

     memset(&sem, 0, sizeof(sem));

     sem.semstate = (void *) result;

     sem.object_start = jsonb_in_object_start;
     sem.array_start = jsonb_in_array_start;
     sem.object_end = jsonb_in_object_end;
     sem.array_end = jsonb_in_array_end;
     sem.scalar = jsonb_in_scalar;
     sem.object_field_start = jsonb_in_object_field_start;

     pg_parse_json(lex, &sem);

    }
    break;
   case 134:
    {
     Jsonb *jsonb = DatumGetJsonbP(val);
     JsonbIterator *it;

     it = JsonbIteratorInit(&jsonb->root);

     if (JB_ROOT_IS_SCALAR(jsonb))
     {
      (void) JsonbIteratorNext(&it, &jb, 1);
      Assert(jb.type == 129);
      (void) JsonbIteratorNext(&it, &jb, 1);
      scalar_jsonb = 1;
     }
     else
     {
      JsonbIteratorToken type;

      while ((type = JsonbIteratorNext(&it, &jb, 0))
          != WJB_DONE)
      {
       if (type == WJB_END_ARRAY || type == WJB_END_OBJECT ||
        type == WJB_BEGIN_ARRAY || type == WJB_BEGIN_OBJECT)
        result->res = pushJsonbValue(&result->parseState,
                type, ((void*)0));
       else
        result->res = pushJsonbValue(&result->parseState,
                type, &jb);
      }
     }
    }
    break;
   default:
    outputstr = OidOutputFunctionCall(outfuncoid, val);
    jb.type = jbvString;
    jb.val.string.len = checkStringLen(strlen(outputstr));
    jb.val.string.val = outputstr;
    break;
  }
 }


 if (!is_null && !scalar_jsonb &&
  tcategory >= 135 && tcategory <= 133)
 {

  return;
 }
 else if (result->parseState == ((void*)0))
 {

  JsonbValue va;

  va.type = 129;
  va.val.array.rawScalar = 1;
  va.val.array.nElems = 1;

  result->res = pushJsonbValue(&result->parseState, WJB_BEGIN_ARRAY, &va);
  result->res = pushJsonbValue(&result->parseState, WJB_ELEM, &jb);
  result->res = pushJsonbValue(&result->parseState, WJB_END_ARRAY, ((void*)0));
 }
 else
 {
  JsonbValue *o = &result->parseState->contVal;

  switch (o->type)
  {
   case 129:
    result->res = pushJsonbValue(&result->parseState, WJB_ELEM, &jb);
    break;
   case 128:
    result->res = pushJsonbValue(&result->parseState,
            key_scalar ? WJB_KEY : WJB_VALUE,
            &jb);
    break;
   default:
    elog(ERROR, "unexpected parent of nested structure");
  }
 }
}
