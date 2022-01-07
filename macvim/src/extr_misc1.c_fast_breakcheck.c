
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREAKCHECK_SKIP ;
 int breakcheck_count ;
 int ui_breakcheck () ;

void
fast_breakcheck()
{
    if (++breakcheck_count >= BREAKCHECK_SKIP * 10)
    {
 breakcheck_count = 0;
 ui_breakcheck();
    }
}
