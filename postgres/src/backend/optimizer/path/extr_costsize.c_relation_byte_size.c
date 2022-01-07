
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MAXALIGN (int) ;
 int SizeofHeapTupleHeader ;

__attribute__((used)) static double
relation_byte_size(double tuples, int width)
{
 return tuples * (MAXALIGN(width) + MAXALIGN(SizeofHeapTupleHeader));
}
