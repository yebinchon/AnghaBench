
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {struct TYPE_16__* parent; } ;
struct TYPE_13__ {int nPairs; } ;
struct TYPE_12__ {int nElems; int rawScalar; } ;
struct TYPE_14__ {TYPE_2__ object; TYPE_1__ array; } ;
struct TYPE_15__ {int type; TYPE_3__ val; } ;
typedef TYPE_4__ JsonbValue ;
typedef scalar_t__ JsonbIteratorToken ;
typedef TYPE_5__ JsonbIterator ;
typedef int JsonbContainer ;


 int Assert (int) ;
 int ERROR ;
 TYPE_5__* JsonbIteratorInit (int *) ;
 scalar_t__ JsonbIteratorNext (TYPE_5__**,TYPE_4__*,int) ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_END_ARRAY ;
 scalar_t__ WJB_END_OBJECT ;
 int compareJsonbScalarValue (TYPE_4__*,TYPE_4__*) ;
 int elog (int ,char*) ;
 int pfree (TYPE_5__*) ;

int
compareJsonbContainers(JsonbContainer *a, JsonbContainer *b)
{
 JsonbIterator *ita,
      *itb;
 int res = 0;

 ita = JsonbIteratorInit(a);
 itb = JsonbIteratorInit(b);

 do
 {
  JsonbValue va,
     vb;
  JsonbIteratorToken ra,
     rb;

  ra = JsonbIteratorNext(&ita, &va, 0);
  rb = JsonbIteratorNext(&itb, &vb, 0);

  if (ra == rb)
  {
   if (ra == WJB_DONE)
   {

    break;
   }

   if (ra == WJB_END_ARRAY || ra == WJB_END_OBJECT)
   {






    continue;
   }

   if (va.type == vb.type)
   {
    switch (va.type)
    {
     case 128:
     case 131:
     case 130:
     case 133:
      res = compareJsonbScalarValue(&va, &vb);
      break;
     case 135:







      if (va.val.array.rawScalar != vb.val.array.rawScalar)
       res = (va.val.array.rawScalar) ? -1 : 1;
      if (va.val.array.nElems != vb.val.array.nElems)
       res = (va.val.array.nElems > vb.val.array.nElems) ? 1 : -1;
      break;
     case 129:
      if (va.val.object.nPairs != vb.val.object.nPairs)
       res = (va.val.object.nPairs > vb.val.object.nPairs) ? 1 : -1;
      break;
     case 134:
      elog(ERROR, "unexpected jbvBinary value");
      break;
     case 132:
      elog(ERROR, "unexpected jbvDatetime value");
      break;
    }
   }
   else
   {

    res = (va.type > vb.type) ? 1 : -1;
   }
  }
  else
  {
   Assert(ra != WJB_END_ARRAY && ra != WJB_END_OBJECT);
   Assert(rb != WJB_END_ARRAY && rb != WJB_END_OBJECT);

   Assert(va.type != vb.type);
   Assert(va.type != 134);
   Assert(vb.type != 134);

   res = (va.type > vb.type) ? 1 : -1;
  }
 }
 while (res == 0);

 while (ita != ((void*)0))
 {
  JsonbIterator *i = ita->parent;

  pfree(ita);
  ita = i;
 }
 while (itb != ((void*)0))
 {
  JsonbIterator *i = itb->parent;

  pfree(itb);
  itb = i;
 }

 return res;
}
