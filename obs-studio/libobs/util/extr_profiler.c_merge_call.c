
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ expected_time_between_calls; int overhead; int times; int times_between_calls; } ;
typedef TYPE_2__ profile_entry ;
struct TYPE_9__ {size_t num; TYPE_3__* array; } ;
struct TYPE_11__ {int overhead_end; int end_time; int start_time; int overhead_start; int name; TYPE_1__ children; } ;
typedef TYPE_3__ profile_call ;


 int add_hashmap_entry (int *,scalar_t__,int) ;
 scalar_t__ diff_ns_to_usec (int ,int ) ;
 TYPE_2__* get_child (TYPE_2__*,int ) ;
 int migrate_old_entries (int *,int) ;

__attribute__((used)) static void merge_call(profile_entry *entry, profile_call *call,
         profile_call *prev_call)
{
 const size_t num = call->children.num;
 for (size_t i = 0; i < num; i++) {
  profile_call *child = &call->children.array[i];
  merge_call(get_child(entry, child->name), child, ((void*)0));
 }

 if (entry->expected_time_between_calls != 0 && prev_call) {
  migrate_old_entries(&entry->times_between_calls, 1);
  uint64_t usec = diff_ns_to_usec(prev_call->start_time,
      call->start_time);
  add_hashmap_entry(&entry->times_between_calls, usec, 1);
 }

 migrate_old_entries(&entry->times, 1);
 uint64_t usec = diff_ns_to_usec(call->start_time, call->end_time);
 add_hashmap_entry(&entry->times, usec, 1);







}
