
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nPairs; TYPE_5__* pairs; } ;
struct TYPE_10__ {TYPE_1__ object; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ val; } ;
struct TYPE_13__ {size_t order; TYPE_3__ key; } ;
struct TYPE_12__ {int size; TYPE_3__ contVal; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ JsonbParseState ;
typedef int JsonbPair ;


 int Assert (int) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int JSONB_MAX_PAIRS ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 scalar_t__ jbvObject ;
 scalar_t__ jbvString ;
 TYPE_5__* repalloc (TYPE_5__*,int) ;

__attribute__((used)) static void
appendKey(JsonbParseState *pstate, JsonbValue *string)
{
 JsonbValue *object = &pstate->contVal;

 Assert(object->type == jbvObject);
 Assert(string->type == jbvString);

 if (object->val.object.nPairs >= JSONB_MAX_PAIRS)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("number of jsonb object pairs exceeds the maximum allowed (%zu)",
      JSONB_MAX_PAIRS)));

 if (object->val.object.nPairs >= pstate->size)
 {
  pstate->size *= 2;
  object->val.object.pairs = repalloc(object->val.object.pairs,
           sizeof(JsonbPair) * pstate->size);
 }

 object->val.object.pairs[object->val.object.nPairs].key = *string;
 object->val.object.pairs[object->val.object.nPairs].order = object->val.object.nPairs;
}
