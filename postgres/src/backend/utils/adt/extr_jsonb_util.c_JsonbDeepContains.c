
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_27__ {int container; } ;
struct TYPE_24__ {int data; } ;
struct TYPE_23__ {int nElems; scalar_t__ rawScalar; } ;
struct TYPE_22__ {int len; int val; } ;
struct TYPE_21__ {scalar_t__ nPairs; } ;
struct TYPE_25__ {TYPE_4__ binary; TYPE_3__ array; TYPE_2__ string; TYPE_1__ object; } ;
struct TYPE_26__ {scalar_t__ type; TYPE_5__ val; } ;
typedef TYPE_6__ JsonbValue ;
typedef scalar_t__ JsonbIteratorToken ;
typedef TYPE_7__ JsonbIterator ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ IsAJsonbScalar (TYPE_6__*) ;
 int JB_FARRAY ;
 TYPE_7__* JsonbIteratorInit (int ) ;
 scalar_t__ JsonbIteratorNext (TYPE_7__**,TYPE_6__*,int) ;
 scalar_t__ WJB_BEGIN_ARRAY ;
 scalar_t__ WJB_BEGIN_OBJECT ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_END_ARRAY ;
 scalar_t__ WJB_END_OBJECT ;
 scalar_t__ WJB_KEY ;
 scalar_t__ WJB_VALUE ;
 int check_stack_depth () ;
 int elog (int ,char*) ;
 int equalsJsonbScalarValue (TYPE_6__*,TYPE_6__*) ;
 int findJsonbValueFromContainer (int ,int ,TYPE_6__*) ;
 TYPE_6__* getKeyJsonValueFromContainer (int ,int ,int ,TYPE_6__*) ;
 scalar_t__ jbvArray ;
 scalar_t__ jbvBinary ;
 scalar_t__ jbvObject ;
 scalar_t__ jbvString ;
 TYPE_6__* palloc (int) ;
 int pfree (TYPE_7__*) ;

bool
JsonbDeepContains(JsonbIterator **val, JsonbIterator **mContained)
{
 JsonbValue vval,
    vcontained;
 JsonbIteratorToken rval,
    rcont;







 check_stack_depth();

 rval = JsonbIteratorNext(val, &vval, 0);
 rcont = JsonbIteratorNext(mContained, &vcontained, 0);

 if (rval != rcont)
 {






  Assert(rval == WJB_BEGIN_OBJECT || rval == WJB_BEGIN_ARRAY);
  Assert(rcont == WJB_BEGIN_OBJECT || rcont == WJB_BEGIN_ARRAY);
  return 0;
 }
 else if (rcont == WJB_BEGIN_OBJECT)
 {
  Assert(vval.type == jbvObject);
  Assert(vcontained.type == jbvObject);
  if (vval.val.object.nPairs < vcontained.val.object.nPairs)
   return 0;


  for (;;)
  {
   JsonbValue *lhsVal;
   JsonbValue lhsValBuf;

   rcont = JsonbIteratorNext(mContained, &vcontained, 0);






   if (rcont == WJB_END_OBJECT)
    return 1;

   Assert(rcont == WJB_KEY);
   Assert(vcontained.type == jbvString);


   lhsVal =
    getKeyJsonValueFromContainer((*val)->container,
            vcontained.val.string.val,
            vcontained.val.string.len,
            &lhsValBuf);
   if (!lhsVal)
    return 0;





   rcont = JsonbIteratorNext(mContained, &vcontained, 1);

   Assert(rcont == WJB_VALUE);





   if (lhsVal->type != vcontained.type)
   {
    return 0;
   }
   else if (IsAJsonbScalar(lhsVal))
   {
    if (!equalsJsonbScalarValue(lhsVal, &vcontained))
     return 0;
   }
   else
   {

    JsonbIterator *nestval,
         *nestContained;

    Assert(lhsVal->type == jbvBinary);
    Assert(vcontained.type == jbvBinary);

    nestval = JsonbIteratorInit(lhsVal->val.binary.data);
    nestContained = JsonbIteratorInit(vcontained.val.binary.data);
    if (!JsonbDeepContains(&nestval, &nestContained))
     return 0;
   }
  }
 }
 else if (rcont == WJB_BEGIN_ARRAY)
 {
  JsonbValue *lhsConts = ((void*)0);
  uint32 nLhsElems = vval.val.array.nElems;

  Assert(vval.type == jbvArray);
  Assert(vcontained.type == jbvArray);
  if (vval.val.array.rawScalar && !vcontained.val.array.rawScalar)
   return 0;


  for (;;)
  {
   rcont = JsonbIteratorNext(mContained, &vcontained, 1);






   if (rcont == WJB_END_ARRAY)
    return 1;

   Assert(rcont == WJB_ELEM);

   if (IsAJsonbScalar(&vcontained))
   {
    if (!findJsonbValueFromContainer((*val)->container,
             JB_FARRAY,
             &vcontained))
     return 0;
   }
   else
   {
    uint32 i;





    if (lhsConts == ((void*)0))
    {
     uint32 j = 0;


     lhsConts = palloc(sizeof(JsonbValue) * nLhsElems);

     for (i = 0; i < nLhsElems; i++)
     {

      rcont = JsonbIteratorNext(val, &vval, 1);
      Assert(rcont == WJB_ELEM);

      if (vval.type == jbvBinary)
       lhsConts[j++] = vval;
     }


     if (j == 0)
      return 0;


     nLhsElems = j;
    }


    for (i = 0; i < nLhsElems; i++)
    {

     JsonbIterator *nestval,
          *nestContained;
     bool contains;

     nestval = JsonbIteratorInit(lhsConts[i].val.binary.data);
     nestContained = JsonbIteratorInit(vcontained.val.binary.data);

     contains = JsonbDeepContains(&nestval, &nestContained);

     if (nestval)
      pfree(nestval);
     if (nestContained)
      pfree(nestContained);
     if (contains)
      break;
    }





    if (i == nLhsElems)
     return 0;
   }
  }
 }
 else
 {
  elog(ERROR, "invalid jsonb container type");
 }

 elog(ERROR, "unexpectedly fell off end of jsonb container");
 return 0;
}
