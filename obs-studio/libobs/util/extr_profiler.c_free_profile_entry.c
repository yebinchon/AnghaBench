
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num; TYPE_1__* array; } ;
struct TYPE_4__ {TYPE_3__ children; int times_between_calls; int overhead; int times; } ;
typedef TYPE_1__ profile_entry ;


 int da_free (TYPE_3__) ;
 int free_hashmap (int *) ;

__attribute__((used)) static void free_profile_entry(profile_entry *entry)
{
 for (size_t i = 0; i < entry->children.num; i++)
  free_profile_entry(&entry->children.array[i]);

 free_hashmap(&entry->times);



 free_hashmap(&entry->times_between_calls);
 da_free(entry->children);
}
