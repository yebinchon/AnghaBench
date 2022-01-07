
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GETSYSCTL_BY_NAME (char*,int ) ;
 int error (char*) ;
 scalar_t__ getpagesize () ;
 int number_of_cpus ;
 scalar_t__ system_pagesize ;
 scalar_t__ unlikely (int) ;

int freebsd_plugin_init()
{
    system_pagesize = getpagesize();
    if (system_pagesize <= 0) {
        error("FREEBSD: can't get system page size");
        return 1;
    }

    if (unlikely(GETSYSCTL_BY_NAME("kern.smp.cpus", number_of_cpus))) {
        error("FREEBSD: can't get number of cpus");
        return 1;
    }

    if (unlikely(!number_of_cpus)) {
        error("FREEBSD: wrong number of cpus");
        return 1;
    }

    return 0;
}
