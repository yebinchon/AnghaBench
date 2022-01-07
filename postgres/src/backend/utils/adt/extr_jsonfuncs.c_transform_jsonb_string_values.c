
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int text ;
struct TYPE_21__ {int root; } ;
struct TYPE_20__ {int isScalar; } ;
struct TYPE_17__ {int rawScalar; } ;
struct TYPE_16__ {int len; int val; } ;
struct TYPE_18__ {TYPE_2__ array; TYPE_1__ string; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_3__ val; } ;
typedef TYPE_4__ JsonbValue ;
typedef int JsonbParseState ;
typedef scalar_t__ JsonbIteratorToken ;
typedef TYPE_5__ JsonbIterator ;
typedef TYPE_6__ Jsonb ;
typedef int * (* JsonTransformStringValuesAction ) (void*,int ,int ) ;


 TYPE_5__* JsonbIteratorInit (int *) ;
 scalar_t__ JsonbIteratorNext (TYPE_5__**,TYPE_4__*,int) ;
 TYPE_6__* JsonbValueToJsonb (TYPE_4__*) ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 scalar_t__ WJB_BEGIN_ARRAY ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_KEY ;
 scalar_t__ WJB_VALUE ;
 scalar_t__ jbvArray ;
 scalar_t__ jbvString ;
 TYPE_4__* pushJsonbValue (int **,scalar_t__,TYPE_4__*) ;

Jsonb *
transform_jsonb_string_values(Jsonb *jsonb, void *action_state,
         JsonTransformStringValuesAction transform_action)
{
 JsonbIterator *it;
 JsonbValue v,
      *res = ((void*)0);
 JsonbIteratorToken type;
 JsonbParseState *st = ((void*)0);
 text *out;
 bool is_scalar = 0;

 it = JsonbIteratorInit(&jsonb->root);
 is_scalar = it->isScalar;

 while ((type = JsonbIteratorNext(&it, &v, 0)) != WJB_DONE)
 {
  if ((type == WJB_VALUE || type == WJB_ELEM) && v.type == jbvString)
  {
   out = transform_action(action_state, v.val.string.val, v.val.string.len);
   v.val.string.val = VARDATA_ANY(out);
   v.val.string.len = VARSIZE_ANY_EXHDR(out);
   res = pushJsonbValue(&st, type, type < WJB_BEGIN_ARRAY ? &v : ((void*)0));
  }
  else
  {
   res = pushJsonbValue(&st, type, (type == WJB_KEY ||
            type == WJB_VALUE ||
            type == WJB_ELEM) ? &v : ((void*)0));
  }
 }

 if (res->type == jbvArray)
  res->val.array.rawScalar = is_scalar;

 return JsonbValueToJsonb(res);
}
