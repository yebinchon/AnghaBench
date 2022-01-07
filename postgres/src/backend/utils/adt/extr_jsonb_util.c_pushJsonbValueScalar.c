
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {void* pairs; int nPairs; } ;
struct TYPE_19__ {int rawScalar; int nElems; void* elems; } ;
struct TYPE_21__ {TYPE_2__ object; TYPE_1__ array; } ;
struct TYPE_22__ {int type; TYPE_3__ val; } ;
struct TYPE_23__ {int size; TYPE_4__ contVal; struct TYPE_23__* next; } ;
typedef TYPE_4__ JsonbValue ;
typedef TYPE_5__ JsonbParseState ;
typedef int JsonbPair ;
typedef int JsonbIteratorToken ;


 int Assert (int) ;
 int ERROR ;
 int IsAJsonbScalar (TYPE_4__*) ;







 int appendElement (TYPE_5__*,TYPE_4__*) ;
 int appendKey (TYPE_5__*,TYPE_4__*) ;
 int appendValue (TYPE_5__*,TYPE_4__*) ;
 int elog (int ,char*) ;


 int jbvString ;
 void* palloc (int) ;
 TYPE_5__* pushState (TYPE_5__**) ;
 int uniqueifyJsonbObject (TYPE_4__*) ;

__attribute__((used)) static JsonbValue *
pushJsonbValueScalar(JsonbParseState **pstate, JsonbIteratorToken seq,
      JsonbValue *scalarVal)
{
 JsonbValue *result = ((void*)0);

 switch (seq)
 {
  case 136:
   Assert(!scalarVal || scalarVal->val.array.rawScalar);
   *pstate = pushState(pstate);
   result = &(*pstate)->contVal;
   (*pstate)->contVal.type = 129;
   (*pstate)->contVal.val.array.nElems = 0;
   (*pstate)->contVal.val.array.rawScalar = (scalarVal &&
               scalarVal->val.array.rawScalar);
   if (scalarVal && scalarVal->val.array.nElems > 0)
   {

    Assert(scalarVal->type == 129);
    (*pstate)->size = scalarVal->val.array.nElems;
   }
   else
   {
    (*pstate)->size = 4;
   }
   (*pstate)->contVal.val.array.elems = palloc(sizeof(JsonbValue) *
              (*pstate)->size);
   break;
  case 135:
   Assert(!scalarVal);
   *pstate = pushState(pstate);
   result = &(*pstate)->contVal;
   (*pstate)->contVal.type = 128;
   (*pstate)->contVal.val.object.nPairs = 0;
   (*pstate)->size = 4;
   (*pstate)->contVal.val.object.pairs = palloc(sizeof(JsonbPair) *
               (*pstate)->size);
   break;
  case 131:
   Assert(scalarVal->type == jbvString);
   appendKey(*pstate, scalarVal);
   break;
  case 130:
   Assert(IsAJsonbScalar(scalarVal));
   appendValue(*pstate, scalarVal);
   break;
  case 134:
   Assert(IsAJsonbScalar(scalarVal));
   appendElement(*pstate, scalarVal);
   break;
  case 132:
   uniqueifyJsonbObject(&(*pstate)->contVal);

  case 133:

   Assert(!scalarVal);
   result = &(*pstate)->contVal;





   *pstate = (*pstate)->next;
   if (*pstate)
   {
    switch ((*pstate)->contVal.type)
    {
     case 129:
      appendElement(*pstate, result);
      break;
     case 128:
      appendValue(*pstate, result);
      break;
     default:
      elog(ERROR, "invalid jsonb container type");
    }
   }
   break;
  default:
   elog(ERROR, "unrecognized jsonb sequential processing token");
 }

 return result;
}
