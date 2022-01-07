
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t freed_segment_counter; TYPE_1__* control; } ;
typedef TYPE_2__ dsa_area ;
struct TYPE_6__ {size_t freed_segment_counter; } ;


 int DSA_AREA_LOCK (TYPE_2__*) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int check_for_freed_segments_locked (TYPE_2__*) ;
 int pg_read_barrier () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
check_for_freed_segments(dsa_area *area)
{
 size_t freed_segment_counter;
 pg_read_barrier();
 freed_segment_counter = area->control->freed_segment_counter;
 if (unlikely(area->freed_segment_counter != freed_segment_counter))
 {

  LWLockAcquire(DSA_AREA_LOCK(area), LW_EXCLUSIVE);
  check_for_freed_segments_locked(area);
  LWLockRelease(DSA_AREA_LOCK(area));
 }
}
