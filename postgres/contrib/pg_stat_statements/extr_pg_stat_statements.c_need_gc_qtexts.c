
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extent; int mutex; } ;
typedef TYPE_1__ pgssSharedState ;
struct TYPE_4__ {int mean_query_len; } ;
typedef int Size ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_2__* pgss ;
 int pgss_max ;

__attribute__((used)) static bool
need_gc_qtexts(void)
{
 Size extent;


 {
  volatile pgssSharedState *s = (volatile pgssSharedState *) pgss;

  SpinLockAcquire(&s->mutex);
  extent = s->extent;
  SpinLockRelease(&s->mutex);
 }


 if (extent < 512 * pgss_max)
  return 0;
 if (extent < pgss->mean_query_len * pgss_max * 2)
  return 0;

 return 1;
}
