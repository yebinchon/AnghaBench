
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_1__* entry; } ;
struct TYPE_3__ {int expected_time_between_calls; } ;


 TYPE_2__* get_root_entry (char const*) ;
 int lock_root () ;
 int pthread_mutex_unlock (int *) ;
 int root_mutex ;

void profile_register_root(const char *name,
      uint64_t expected_time_between_calls)
{
 if (!lock_root())
  return;

 get_root_entry(name)->entry->expected_time_between_calls =
  (expected_time_between_calls + 500) / 1000;
 pthread_mutex_unlock(&root_mutex);
}
