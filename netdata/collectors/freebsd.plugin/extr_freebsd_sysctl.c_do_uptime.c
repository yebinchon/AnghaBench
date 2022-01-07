
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct timespec {int tv_sec; } ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int CLOCK_UPTIME ;
 int NETDATA_CHART_PRIO_SYSTEM_UPTIME ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int clock_gettime (int ,struct timespec*) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_uptime(int update_every, usec_t dt) {
    (void)dt;
    struct timespec up_time;

    clock_gettime(CLOCK_UPTIME, &up_time);



    static RRDSET *st = ((void*)0);
    static RRDDIM *rd = ((void*)0);

    if(unlikely(!st)) {
        st = rrdset_create_localhost(
                "system",
                "uptime",
                ((void*)0),
                "uptime",
                ((void*)0),
                "System Uptime",
                "seconds",
                "freebsd.plugin",
                "uptime",
                NETDATA_CHART_PRIO_SYSTEM_UPTIME,
                update_every,
                RRDSET_TYPE_LINE
        );

        rd = rrddim_add(st, "uptime", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else rrdset_next(st);

    rrddim_set_by_pointer(st, rd, up_time.tv_sec);
    rrdset_done(st);

    return 0;
}
