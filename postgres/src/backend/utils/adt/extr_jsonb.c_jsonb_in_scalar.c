
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int rawScalar; int nElems; } ;
struct TYPE_8__ {char* val; int len; } ;
struct TYPE_10__ {int boolean; TYPE_2__ array; int numeric; TYPE_1__ string; } ;
struct TYPE_11__ {int type; TYPE_3__ val; } ;
struct TYPE_13__ {TYPE_4__ contVal; } ;
struct TYPE_12__ {TYPE_6__* parseState; void* res; } ;
typedef TYPE_4__ JsonbValue ;
typedef TYPE_5__ JsonbInState ;
typedef int JsonTokenType ;
typedef int Datum ;


 int Assert (int ) ;
 int CStringGetDatum (char*) ;
 int DatumGetNumeric (int ) ;
 int DirectFunctionCall3 (int ,int ,int ,int ) ;
 int ERROR ;
 int Int32GetDatum (int) ;
 int InvalidOid ;





 int ObjectIdGetDatum (int ) ;
 int WJB_BEGIN_ARRAY ;
 int WJB_ELEM ;
 int WJB_END_ARRAY ;
 int WJB_VALUE ;
 int checkStringLen (int ) ;
 int elog (int ,char*) ;

 void* jbvBool ;
 int jbvNull ;
 int jbvNumeric ;

 int jbvString ;
 int numeric_in ;
 void* pushJsonbValue (TYPE_6__**,int ,TYPE_4__*) ;
 int strlen (char*) ;

__attribute__((used)) static void
jsonb_in_scalar(void *pstate, char *token, JsonTokenType tokentype)
{
 JsonbInState *_state = (JsonbInState *) pstate;
 JsonbValue v;
 Datum numd;

 switch (tokentype)
 {

  case 131:
   Assert(token != ((void*)0));
   v.type = jbvString;
   v.val.string.len = checkStringLen(strlen(token));
   v.val.string.val = token;
   break;
  case 132:





   Assert(token != ((void*)0));
   v.type = jbvNumeric;
   numd = DirectFunctionCall3(numeric_in,
            CStringGetDatum(token),
            ObjectIdGetDatum(InvalidOid),
            Int32GetDatum(-1));
   v.val.numeric = DatumGetNumeric(numd);
   break;
  case 130:
   v.type = jbvBool;
   v.val.boolean = 1;
   break;
  case 134:
   v.type = jbvBool;
   v.val.boolean = 0;
   break;
  case 133:
   v.type = jbvNull;
   break;
  default:

   elog(ERROR, "invalid json token type");
   break;
 }

 if (_state->parseState == ((void*)0))
 {

  JsonbValue va;

  va.type = 129;
  va.val.array.rawScalar = 1;
  va.val.array.nElems = 1;

  _state->res = pushJsonbValue(&_state->parseState, WJB_BEGIN_ARRAY, &va);
  _state->res = pushJsonbValue(&_state->parseState, WJB_ELEM, &v);
  _state->res = pushJsonbValue(&_state->parseState, WJB_END_ARRAY, ((void*)0));
 }
 else
 {
  JsonbValue *o = &_state->parseState->contVal;

  switch (o->type)
  {
   case 129:
    _state->res = pushJsonbValue(&_state->parseState, WJB_ELEM, &v);
    break;
   case 128:
    _state->res = pushJsonbValue(&_state->parseState, WJB_VALUE, &v);
    break;
   default:
    elog(ERROR, "unexpected parent of nested structure");
  }
 }
}
