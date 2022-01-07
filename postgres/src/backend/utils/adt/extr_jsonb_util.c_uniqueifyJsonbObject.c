
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nPairs; int * pairs; } ;
struct TYPE_6__ {TYPE_1__ object; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbPair ;


 int Assert (int) ;
 scalar_t__ jbvObject ;
 int lengthCompareJsonbPair ;
 scalar_t__ lengthCompareJsonbStringValue (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int qsort_arg (int *,int,int,int ,int*) ;

__attribute__((used)) static void
uniqueifyJsonbObject(JsonbValue *object)
{
 bool hasNonUniq = 0;

 Assert(object->type == jbvObject);

 if (object->val.object.nPairs > 1)
  qsort_arg(object->val.object.pairs, object->val.object.nPairs, sizeof(JsonbPair),
      lengthCompareJsonbPair, &hasNonUniq);

 if (hasNonUniq)
 {
  JsonbPair *ptr = object->val.object.pairs + 1,
       *res = object->val.object.pairs;

  while (ptr - object->val.object.pairs < object->val.object.nPairs)
  {

   if (lengthCompareJsonbStringValue(ptr, res) != 0)
   {
    res++;
    if (ptr != res)
     memcpy(res, ptr, sizeof(JsonbPair));
   }
   ptr++;
  }

  object->val.object.nPairs = res + 1 - object->val.object.pairs;
 }
}
