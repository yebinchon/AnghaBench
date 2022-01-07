
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IndexTupleData ;
typedef int IndexTuple ;


 scalar_t__ IndexTupleSize (int ) ;
 int memcpy (char*,int ,scalar_t__) ;
 char* palloc (int) ;

IndexTupleData *
gistfillitupvec(IndexTuple *vec, int veclen, int *memlen)
{
 char *ptr,
      *ret;
 int i;

 *memlen = 0;

 for (i = 0; i < veclen; i++)
  *memlen += IndexTupleSize(vec[i]);

 ptr = ret = palloc(*memlen);

 for (i = 0; i < veclen; i++)
 {
  memcpy(ptr, vec[i], IndexTupleSize(vec[i]));
  ptr += IndexTupleSize(vec[i]);
 }

 return (IndexTupleData *) ret;
}
