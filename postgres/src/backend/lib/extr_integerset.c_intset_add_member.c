
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_4__ {scalar_t__ highest_value; scalar_t__ num_entries; scalar_t__ num_buffered_values; scalar_t__* buffered_values; scalar_t__ iter_active; } ;
typedef TYPE_1__ IntegerSet ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ MAX_BUFFERED_VALUES ;
 int elog (int ,char*) ;
 int intset_flush_buffered_values (TYPE_1__*) ;

void
intset_add_member(IntegerSet *intset, uint64 x)
{
 if (intset->iter_active)
  elog(ERROR, "cannot add new values to integer set while iteration is in progress");

 if (x <= intset->highest_value && intset->num_entries > 0)
  elog(ERROR, "cannot add value to integer set out of order");

 if (intset->num_buffered_values >= MAX_BUFFERED_VALUES)
 {

  intset_flush_buffered_values(intset);
  Assert(intset->num_buffered_values < MAX_BUFFERED_VALUES);
 }


 intset->buffered_values[intset->num_buffered_values] = x;
 intset->num_buffered_values++;
 intset->num_entries++;
 intset->highest_value = x;
}
