
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int collected_number ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int MAX_INT_DIGITS ;
 int NETDATA_CHART_PRIO_CPU_TEMPERATURE ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int error (char*) ;
 int getsysctl_simple (char*,int*,int,int*,int) ;
 int memset (int*,int ,int) ;
 int number_of_cpus ;
 void* reallocz (int*,int) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,char*,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ unlikely (int) ;

int do_dev_cpu_temperature(int update_every, usec_t dt) {
    (void)dt;

    int i;
    static int *mib = ((void*)0);
    static int *pcpu_temperature = ((void*)0);
    static int old_number_of_cpus = 0;
    char char_mib[MAX_INT_DIGITS + 21];
    char char_rd[MAX_INT_DIGITS + 9];

    if (unlikely(number_of_cpus != old_number_of_cpus)) {
        pcpu_temperature = reallocz(pcpu_temperature, sizeof(int) * number_of_cpus);
        mib = reallocz(mib, sizeof(int) * number_of_cpus * 4);
        if (unlikely(number_of_cpus > old_number_of_cpus))
            memset(&mib[old_number_of_cpus * 4], 0, sizeof(int) * (number_of_cpus - old_number_of_cpus) * 4);
    }
    for (i = 0; i < number_of_cpus; i++) {
        if (unlikely(!(mib[i * 4])))
            sprintf(char_mib, "dev.cpu.%d.temperature", i);
        if (unlikely(getsysctl_simple(char_mib, &mib[i * 4], 4, &pcpu_temperature[i], sizeof(int)))) {
            error("DISABLED: cpu.temperature chart");
            error("DISABLED: dev.cpu.temperature module");
            return 1;
        }
    }



    static RRDSET *st;
    static RRDDIM **rd_pcpu_temperature;

    if (unlikely(number_of_cpus != old_number_of_cpus)) {
        rd_pcpu_temperature = reallocz(rd_pcpu_temperature, sizeof(RRDDIM) * number_of_cpus);
        if (unlikely(number_of_cpus > old_number_of_cpus))
            memset(&rd_pcpu_temperature[old_number_of_cpus], 0, sizeof(RRDDIM) * (number_of_cpus - old_number_of_cpus));
    }

    if (unlikely(!st)) {
        st = rrdset_create_localhost(
                "cpu",
                "temperature",
                ((void*)0),
                "temperature",
                "cpu.temperatute",
                "Core temperature",
                "Celsius",
                "freebsd.plugin",
                "dev.cpu.temperature",
                NETDATA_CHART_PRIO_CPU_TEMPERATURE,
                update_every,
                RRDSET_TYPE_LINE
        );
    }
    else rrdset_next(st);

    for (i = 0; i < number_of_cpus; i++) {
        if (unlikely(!rd_pcpu_temperature[i])) {
            sprintf(char_rd, "cpu%d.temp", i);
            rd_pcpu_temperature[i] = rrddim_add(st, char_rd, ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
        }

        rrddim_set_by_pointer(st, rd_pcpu_temperature[i], (collected_number) ((double)pcpu_temperature[i] / 10 - 273.15));
    }

    rrdset_done(st);

    old_number_of_cpus = number_of_cpus;

    return 0;
}
