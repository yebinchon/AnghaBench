
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IndexTuple ;


 int memmove (int *,int *,int) ;
 scalar_t__ repalloc (void*,int) ;

IndexTuple *
gistjoinvector(IndexTuple *itvec, int *len, IndexTuple *additvec, int addlen)
{
 itvec = (IndexTuple *) repalloc((void *) itvec, sizeof(IndexTuple) * ((*len) + addlen));
 memmove(&itvec[*len], additvec, sizeof(IndexTuple) * addlen);
 *len += addlen;
 return itvec;
}
