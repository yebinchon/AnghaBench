
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;


 int hrtimer_cancel (struct hrtimer*) ;

__attribute__((used)) static void soft_timer_cancel(struct hrtimer *hrt)
{
 hrtimer_cancel(hrt);
}
