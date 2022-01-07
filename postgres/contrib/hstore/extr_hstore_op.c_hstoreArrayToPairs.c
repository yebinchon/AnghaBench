
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isnull; scalar_t__ needfree; scalar_t__ vallen; int * val; scalar_t__ keylen; int key; } ;
typedef TYPE_1__ Pairs ;
typedef int Datum ;
typedef int ArrayType ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MaxAllocSize ;
 int TEXTOID ;
 int VARDATA (int ) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int**,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,int) ;
 int hstoreUniquePairs (TYPE_1__*,int,int*) ;
 TYPE_1__* palloc (int) ;

Pairs *
hstoreArrayToPairs(ArrayType *a, int *npairs)
{
 Datum *key_datums;
 bool *key_nulls;
 int key_count;
 Pairs *key_pairs;
 int bufsiz;
 int i,
    j;

 deconstruct_array(a,
       TEXTOID, -1, 0, 'i',
       &key_datums, &key_nulls, &key_count);

 if (key_count == 0)
 {
  *npairs = 0;
  return ((void*)0);
 }
 if (key_count > MaxAllocSize / sizeof(Pairs))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("number of pairs (%d) exceeds the maximum allowed (%d)",
      key_count, (int) (MaxAllocSize / sizeof(Pairs)))));

 key_pairs = palloc(sizeof(Pairs) * key_count);

 for (i = 0, j = 0; i < key_count; i++)
 {
  if (!key_nulls[i])
  {
   key_pairs[j].key = VARDATA(key_datums[i]);
   key_pairs[j].keylen = VARSIZE(key_datums[i]) - VARHDRSZ;
   key_pairs[j].val = ((void*)0);
   key_pairs[j].vallen = 0;
   key_pairs[j].needfree = 0;
   key_pairs[j].isnull = 1;
   j++;
  }
 }

 *npairs = hstoreUniquePairs(key_pairs, j, &bufsiz);

 return key_pairs;
}
