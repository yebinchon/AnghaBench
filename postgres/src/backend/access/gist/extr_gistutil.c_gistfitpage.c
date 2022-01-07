
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int ItemIdData ;
typedef int IndexTuple ;


 scalar_t__ GiSTPageSize ;
 scalar_t__ IndexTupleSize (int ) ;

bool
gistfitpage(IndexTuple *itvec, int len)
{
 int i;
 Size size = 0;

 for (i = 0; i < len; i++)
  size += IndexTupleSize(itvec[i]) + sizeof(ItemIdData);


 return (size <= GiSTPageSize);
}
