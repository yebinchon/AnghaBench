
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

void *ta_oom_p(void *p)
{
    if (!p)
        abort();
    return p;
}
