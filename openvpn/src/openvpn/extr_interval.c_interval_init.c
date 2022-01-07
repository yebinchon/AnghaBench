
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interval {int refresh; int horizon; } ;


 int CLEAR (struct interval) ;

void
interval_init(struct interval *top, int horizon, int refresh)
{
    CLEAR(*top);
    top->refresh = refresh;
    top->horizon = horizon;
}
