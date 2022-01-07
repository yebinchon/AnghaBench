
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ truncate; } ;
typedef TYPE_1__ VacuumParams ;
struct TYPE_6__ {int rel_pages; int nonempty_pages; } ;
typedef TYPE_2__ LVRelStats ;
typedef int BlockNumber ;


 int REL_TRUNCATE_FRACTION ;
 int REL_TRUNCATE_MINIMUM ;
 scalar_t__ VACOPT_TERNARY_DISABLED ;
 scalar_t__ old_snapshot_threshold ;

__attribute__((used)) static bool
should_attempt_truncation(VacuumParams *params, LVRelStats *vacrelstats)
{
 BlockNumber possibly_freeable;

 if (params->truncate == VACOPT_TERNARY_DISABLED)
  return 0;

 possibly_freeable = vacrelstats->rel_pages - vacrelstats->nonempty_pages;
 if (possibly_freeable > 0 &&
  (possibly_freeable >= REL_TRUNCATE_MINIMUM ||
   possibly_freeable >= vacrelstats->rel_pages / REL_TRUNCATE_FRACTION) &&
  old_snapshot_threshold < 0)
  return 1;
 else
  return 0;
}
