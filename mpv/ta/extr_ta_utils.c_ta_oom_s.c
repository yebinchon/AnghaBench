
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

char *ta_oom_s(char *s)
{
    if (!s)
        abort();
    return s;
}
