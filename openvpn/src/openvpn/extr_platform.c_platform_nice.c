
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ERRNO ;
 int M_INFO ;
 int M_WARN ;
 scalar_t__ errno ;
 int msg (int,char*,int) ;
 scalar_t__ nice (int) ;

void
platform_nice(int niceval)
{
    if (niceval)
    {
        msg(M_WARN, "WARNING: nice %d failed (function not implemented)", niceval);

    }
}
