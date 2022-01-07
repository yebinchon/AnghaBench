
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hrtimer {int dummy; } ;


 int HRTIMER_MODE_ABS ;
 int hrtimer_start (struct hrtimer*,int ,int ) ;
 int ktime_add_ns (int ,int ) ;
 int ktime_get () ;

__attribute__((used)) static void soft_timer_start(struct hrtimer *hrt, u64 ns)
{
 hrtimer_start(hrt, ktime_add_ns(ktime_get(), ns),
        HRTIMER_MODE_ABS);
}
