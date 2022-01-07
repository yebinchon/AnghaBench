
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TBMSharedIterator ;


 int pfree (int *) ;

void
tbm_end_shared_iterate(TBMSharedIterator *iterator)
{
 pfree(iterator);
}
