
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
struct TYPE_10__ {TYPE_1__ binary; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbParseState ;
typedef scalar_t__ JsonbIteratorToken ;
typedef int JsonbIterator ;


 int * JsonbIteratorInit (int ) ;
 scalar_t__ JsonbIteratorNext (int **,TYPE_3__*,int) ;
 scalar_t__ WJB_BEGIN_ARRAY ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_VALUE ;
 scalar_t__ jbvBinary ;
 TYPE_3__* pushJsonbValueScalar (int **,scalar_t__,TYPE_3__*) ;

JsonbValue *
pushJsonbValue(JsonbParseState **pstate, JsonbIteratorToken seq,
      JsonbValue *jbval)
{
 JsonbIterator *it;
 JsonbValue *res = ((void*)0);
 JsonbValue v;
 JsonbIteratorToken tok;

 if (!jbval || (seq != WJB_ELEM && seq != WJB_VALUE) ||
  jbval->type != jbvBinary)
 {

  return pushJsonbValueScalar(pstate, seq, jbval);
 }


 it = JsonbIteratorInit(jbval->val.binary.data);
 while ((tok = JsonbIteratorNext(&it, &v, 0)) != WJB_DONE)
  res = pushJsonbValueScalar(pstate, tok,
           tok < WJB_BEGIN_ARRAY ? &v : ((void*)0));

 return res;
}
