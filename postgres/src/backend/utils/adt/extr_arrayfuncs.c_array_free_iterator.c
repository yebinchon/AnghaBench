
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ slice_ndim; struct TYPE_4__* slice_nulls; struct TYPE_4__* slice_values; } ;
typedef TYPE_1__* ArrayIterator ;


 int pfree (TYPE_1__*) ;

void
array_free_iterator(ArrayIterator iterator)
{
 if (iterator->slice_ndim > 0)
 {
  pfree(iterator->slice_values);
  pfree(iterator->slice_nulls);
 }
 pfree(iterator);
}
