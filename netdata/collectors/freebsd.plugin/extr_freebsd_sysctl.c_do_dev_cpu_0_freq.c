
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,int) ;
 int NETDATA_CHART_PRIO_CPUFREQ_SCALING_CUR_FREQ ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int error (char*) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_dev_cpu_0_freq(int update_every, usec_t dt) {
    (void)dt;
    static int mib[4] = {0, 0, 0, 0};
    int cpufreq;

    if (unlikely(GETSYSCTL_SIMPLE("dev.cpu.0.freq", mib, cpufreq))) {
        error("DISABLED: cpu.scaling_cur_freq chart");
        error("DISABLED: dev.cpu.0.freq module");
        return 1;
    } else {



        static RRDSET *st = ((void*)0);
        static RRDDIM *rd = ((void*)0);

        if (unlikely(!st)) {
            st = rrdset_create_localhost(
                    "cpu",
                    "scaling_cur_freq",
                    ((void*)0),
                    "cpufreq",
                    ((void*)0),
                    "Current CPU Scaling Frequency",
                    "MHz",
                    "freebsd.plugin",
                    "dev.cpu.0.freq",
                    NETDATA_CHART_PRIO_CPUFREQ_SCALING_CUR_FREQ,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd = rrddim_add(st, "frequency", ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
        }
        else rrdset_next(st);

        rrddim_set_by_pointer(st, rd, cpufreq);
        rrdset_done(st);
    }

    return 0;
}
