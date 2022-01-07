
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef scalar_t__ IndexTuple ;


 int IndexTupleSize (scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 scalar_t__ palloc (int ) ;

IndexTuple
CopyIndexTuple(IndexTuple source)
{
 IndexTuple result;
 Size size;

 size = IndexTupleSize(source);
 result = (IndexTuple) palloc(size);
 memcpy(result, source, size);
 return result;
}
