
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ntups; size_t tupArrSize; int memorySize; int ** tuples; } ;
typedef TYPE_1__ PGresult ;
typedef int PGresAttValue ;


 int INT_MAX ;
 int SIZE_MAX ;
 char* libpq_gettext (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (int **,int) ;

__attribute__((used)) static bool
pqAddTuple(PGresult *res, PGresAttValue *tup, const char **errmsgp)
{
 if (res->ntups >= res->tupArrSize)
 {
  int newSize;
  PGresAttValue **newTuples;





  if (res->tupArrSize <= INT_MAX / 2)
   newSize = (res->tupArrSize > 0) ? res->tupArrSize * 2 : 128;
  else if (res->tupArrSize < INT_MAX)
   newSize = INT_MAX;
  else
  {
   *errmsgp = libpq_gettext("PGresult cannot support more than INT_MAX tuples");
   return 0;
  }







  if (newSize > SIZE_MAX / sizeof(PGresAttValue *))
  {
   *errmsgp = libpq_gettext("size_t overflow");
   return 0;
  }


  if (res->tuples == ((void*)0))
   newTuples = (PGresAttValue **)
    malloc(newSize * sizeof(PGresAttValue *));
  else
   newTuples = (PGresAttValue **)
    realloc(res->tuples, newSize * sizeof(PGresAttValue *));
  if (!newTuples)
   return 0;
  res->memorySize +=
   (newSize - res->tupArrSize) * sizeof(PGresAttValue *);
  res->tupArrSize = newSize;
  res->tuples = newTuples;
 }
 res->tuples[res->ntups] = tup;
 res->ntups++;
 return 1;
}
