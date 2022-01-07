
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int times_between_calls; scalar_t__ expected_time_between_calls; int overhead; int times; } ;
typedef TYPE_1__ profile_entry ;


 int init_hashmap (int *,int) ;

__attribute__((used)) static profile_entry *init_entry(profile_entry *entry, const char *name)
{
 entry->name = name;
 init_hashmap(&entry->times, 1);



 entry->expected_time_between_calls = 0;
 init_hashmap(&entry->times_between_calls, 1);
 return entry;
}
