
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ IndexTuple ;


 int Assert (int) ;
 int IndexTupleSize (scalar_t__) ;
 int memcpy (int*,char*,int) ;
 scalar_t__* palloc (int) ;

__attribute__((used)) static IndexTuple *
decodePageSplitRecord(char *begin, int len, int *n)
{
 char *ptr;
 int i = 0;
 IndexTuple *tuples;


 memcpy(n, begin, sizeof(int));
 ptr = begin + sizeof(int);

 tuples = palloc(*n * sizeof(IndexTuple));

 for (i = 0; i < *n; i++)
 {
  Assert(ptr - begin < len);
  tuples[i] = (IndexTuple) ptr;
  ptr += IndexTupleSize((IndexTuple) ptr);
 }
 Assert(ptr - begin == len);

 return tuples;
}
