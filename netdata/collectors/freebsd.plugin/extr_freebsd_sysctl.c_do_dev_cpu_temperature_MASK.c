#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  collected_number ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_INT_DIGITS ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_CPU_TEMPERATURE ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int number_of_cpus ; 
 void* FUNC3 (int*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(int update_every, usec_t dt) {
    (void)dt;

    int i;
    static int *mib = NULL;
    static int *pcpu_temperature = NULL;
    static int old_number_of_cpus = 0;
    char char_mib[MAX_INT_DIGITS + 21];
    char char_rd[MAX_INT_DIGITS + 9];

    if (FUNC10(number_of_cpus != old_number_of_cpus)) {
        pcpu_temperature = FUNC3(pcpu_temperature, sizeof(int) * number_of_cpus);
        mib = FUNC3(mib, sizeof(int) * number_of_cpus * 4);
        if (FUNC10(number_of_cpus > old_number_of_cpus))
            FUNC2(&mib[old_number_of_cpus * 4], 0, sizeof(int) * (number_of_cpus - old_number_of_cpus) * 4);
    }
    for (i = 0; i < number_of_cpus; i++) {
        if (FUNC10(!(mib[i * 4])))
            FUNC9(char_mib, "dev.cpu.%d.temperature", i);
        if (FUNC10(FUNC1(char_mib, &mib[i * 4], 4, &pcpu_temperature[i], sizeof(int)))) {
            FUNC0("DISABLED: cpu.temperature chart");
            FUNC0("DISABLED: dev.cpu.temperature module");
            return 1;
        }
    }

    // --------------------------------------------------------------------

    static RRDSET *st;
    static RRDDIM **rd_pcpu_temperature;

    if (FUNC10(number_of_cpus != old_number_of_cpus)) {
        rd_pcpu_temperature = FUNC3(*rd_pcpu_temperature, sizeof(RRDDIM) * number_of_cpus);
        if (FUNC10(number_of_cpus > old_number_of_cpus))
            FUNC2(rd_pcpu_temperature[old_number_of_cpus], 0, sizeof(RRDDIM) * (number_of_cpus - old_number_of_cpus));
    }

    if (FUNC10(!st)) {
        st = FUNC6(
                "cpu",
                "temperature",
                NULL,
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
    else FUNC8(st);

    for (i = 0; i < number_of_cpus; i++) {
        if (FUNC10(!rd_pcpu_temperature[i])) {
            FUNC9(char_rd, "cpu%d.temp", i);
            rd_pcpu_temperature[i] = FUNC4(st, char_rd, NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
        }

        FUNC5(st, rd_pcpu_temperature[i], (collected_number) ((double)pcpu_temperature[i] / 10 - 273.15));
    }

    FUNC7(st);

    old_number_of_cpus = number_of_cpus;

    return 0;
}