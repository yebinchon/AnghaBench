
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ time_delta; } ;
typedef TYPE_1__ profiler_time_entry ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int profiler_time_entry_compare(const void *first, const void *second)
{
 int64_t diff = ((profiler_time_entry *)second)->time_delta -
         ((profiler_time_entry *)first)->time_delta;
 return diff < 0 ? -1 : (diff > 0 ? 1 : 0);
}
