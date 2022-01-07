
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_3__ {int num_entries; } ;
typedef TYPE_1__ IntegerSet ;



uint64
intset_num_entries(IntegerSet *intset)
{
 return intset->num_entries;
}
