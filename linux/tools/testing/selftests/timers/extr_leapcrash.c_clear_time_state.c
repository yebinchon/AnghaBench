
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {scalar_t__ status; void* modes; } ;


 void* ADJ_STATUS ;
 scalar_t__ STA_PLL ;
 int adjtimex (struct timex*) ;

int clear_time_state(void)
{
 struct timex tx;
 int ret;







 tx.modes = ADJ_STATUS;
 tx.status = STA_PLL;
 ret = adjtimex(&tx);

 tx.modes = ADJ_STATUS;
 tx.status = 0;
 ret = adjtimex(&tx);

 return ret;
}
