
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {int state; size_t nElems; size_t curIndex; int * children; int curValueOffset; int curDataOffset; int dataProper; int container; int isScalar; } ;
struct TYPE_17__ {int data; } ;
struct TYPE_16__ {size_t nPairs; } ;
struct TYPE_15__ {size_t nElems; int rawScalar; } ;
struct TYPE_18__ {TYPE_3__ binary; TYPE_2__ object; TYPE_1__ array; } ;
struct TYPE_19__ {TYPE_4__ val; int type; } ;
typedef TYPE_5__ JsonbValue ;
typedef int JsonbIteratorToken ;
typedef TYPE_6__ JsonbIterator ;


 int ERROR ;
 int IsAJsonbScalar (TYPE_5__*) ;
 int JBE_ADVANCE_OFFSET (int ,int ) ;





 int WJB_BEGIN_ARRAY ;
 int WJB_BEGIN_OBJECT ;
 int WJB_DONE ;
 int WJB_ELEM ;
 int WJB_END_ARRAY ;
 int WJB_END_OBJECT ;
 int WJB_KEY ;
 int WJB_VALUE ;
 int elog (int ,char*) ;
 int fillJsonbValue (int ,size_t,int ,int ,TYPE_5__*) ;
 TYPE_6__* freeAndGetParent (TYPE_6__*) ;
 int getJsonbOffset (int ,size_t) ;
 TYPE_6__* iteratorFromContainer (int ,TYPE_6__*) ;
 int jbvArray ;
 int jbvObject ;
 int jbvString ;

JsonbIteratorToken
JsonbIteratorNext(JsonbIterator **it, JsonbValue *val, bool skipNested)
{
 if (*it == ((void*)0))
  return WJB_DONE;







recurse:
 switch ((*it)->state)
 {
  case 131:

   val->type = jbvArray;
   val->val.array.nElems = (*it)->nElems;





   val->val.array.rawScalar = (*it)->isScalar;
   (*it)->curIndex = 0;
   (*it)->curDataOffset = 0;
   (*it)->curValueOffset = 0;

   (*it)->state = 132;
   return WJB_BEGIN_ARRAY;

  case 132:
   if ((*it)->curIndex >= (*it)->nElems)
   {






    *it = freeAndGetParent(*it);
    return WJB_END_ARRAY;
   }

   fillJsonbValue((*it)->container, (*it)->curIndex,
         (*it)->dataProper, (*it)->curDataOffset,
         val);

   JBE_ADVANCE_OFFSET((*it)->curDataOffset,
          (*it)->children[(*it)->curIndex]);
   (*it)->curIndex++;

   if (!IsAJsonbScalar(val) && !skipNested)
   {

    *it = iteratorFromContainer(val->val.binary.data, *it);
    goto recurse;
   }
   else
   {




    return WJB_ELEM;
   }

  case 129:

   val->type = jbvObject;
   val->val.object.nPairs = (*it)->nElems;





   (*it)->curIndex = 0;
   (*it)->curDataOffset = 0;
   (*it)->curValueOffset = getJsonbOffset((*it)->container,
               (*it)->nElems);

   (*it)->state = 130;
   return WJB_BEGIN_OBJECT;

  case 130:
   if ((*it)->curIndex >= (*it)->nElems)
   {






    *it = freeAndGetParent(*it);
    return WJB_END_OBJECT;
   }
   else
   {

    fillJsonbValue((*it)->container, (*it)->curIndex,
          (*it)->dataProper, (*it)->curDataOffset,
          val);
    if (val->type != jbvString)
     elog(ERROR, "unexpected jsonb type as object key");


    (*it)->state = 128;
    return WJB_KEY;
   }

  case 128:

   (*it)->state = 130;

   fillJsonbValue((*it)->container, (*it)->curIndex + (*it)->nElems,
         (*it)->dataProper, (*it)->curValueOffset,
         val);

   JBE_ADVANCE_OFFSET((*it)->curDataOffset,
          (*it)->children[(*it)->curIndex]);
   JBE_ADVANCE_OFFSET((*it)->curValueOffset,
          (*it)->children[(*it)->curIndex + (*it)->nElems]);
   (*it)->curIndex++;






   if (!IsAJsonbScalar(val) && !skipNested)
   {
    *it = iteratorFromContainer(val->val.binary.data, *it);
    goto recurse;
   }
   else
    return WJB_VALUE;
 }

 elog(ERROR, "invalid iterator state");
 return -1;
}
