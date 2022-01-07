
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ tbl; int lastinc; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 scalar_t__ CONFIG_SYS_TIMERBASE ;
 int CONFIG_TIMER_PRESCALE ;
 int READ_TIMER ;
 scalar_t__ TIMER_CTRL ;
 int TIMER_ENABLE ;
 int TIMER_ENABLE_SHIFT ;
 scalar_t__ TIMER_LOAD ;
 int TIMER_LOAD_VAL ;
 int TIMER_MODE_PERIODIC ;
 int TIMER_MODE_SHIFT ;
 int TIMER_PRESCALE_SHIFT ;
 TYPE_2__* gd ;
 int writel (int,scalar_t__) ;

int timer_init (void)
{
 int32_t val;


 writel(TIMER_LOAD_VAL, CONFIG_SYS_TIMERBASE + TIMER_LOAD);

 val = (CONFIG_TIMER_PRESCALE << TIMER_PRESCALE_SHIFT) |
   (TIMER_MODE_PERIODIC << TIMER_MODE_SHIFT) |
   (TIMER_ENABLE << TIMER_ENABLE_SHIFT);
 writel(val, CONFIG_SYS_TIMERBASE + TIMER_CTRL);


 gd->arch.lastinc = READ_TIMER;
 gd->arch.tbl = 0;

 return(0);
}
