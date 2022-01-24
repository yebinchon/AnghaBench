#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct per_core_time_in_state_file {size_t filename; size_t last_ticks_len; int /*<<< orphan*/ * ff; TYPE_1__* last_ticks; } ;
struct per_core_single_number_file {int found; unsigned long long value; } ;
struct last_ticks {int dummy; } ;
struct cpu_chart {struct per_core_time_in_state_file time_in_state_files; struct per_core_single_number_file* files; } ;
struct TYPE_4__ {unsigned long long ticks; unsigned long long frequency; } ;

/* Variables and functions */
 scalar_t__ CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ keep_per_core_fds_open ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,int) ; 
 unsigned long long FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct cpu_chart *all_cpu_charts, size_t len, size_t index) {
    size_t x, files_read = 0, files_nonzero = 0;

    for(x = 0; x < len ; x++) {
        struct per_core_single_number_file *f = &all_cpu_charts[x].files[index];
        struct per_core_time_in_state_file *tsf = &all_cpu_charts[x].time_in_state_files;

        f->found = 0;

        if(FUNC12(!tsf->filename))
            continue;

        if(FUNC12(!tsf->ff)) {
            tsf->ff = FUNC7(tsf->filename, " \t:", PROCFILE_FLAG_DEFAULT);
            if(FUNC12(!tsf->ff))
            {
                FUNC0("Cannot open file '%s'", tsf->filename);
                continue;
            }
        }

        tsf->ff = FUNC8(tsf->ff);
        if(FUNC12(!tsf->ff)) {
            FUNC0("Cannot read file '%s'", tsf->filename);
            FUNC3(tsf->ff);
            tsf->ff = NULL;
            continue;
        }
        else {
            // successful read

            size_t lines = FUNC4(tsf->ff), l;
            size_t words;
            unsigned long long total_ticks_since_last = 0, avg_freq = 0;

            // Check if there is at least one frequency in time_in_state
            if (FUNC9(tsf->ff, 0)[0] == '\0') {
                if(FUNC12(keep_per_core_fds_open != CONFIG_BOOLEAN_YES)) {
                    FUNC3(tsf->ff);
                    tsf->ff = NULL;
                }
                // TODO: Is there a better way to avoid spikes than calculating the average over
                // the whole period under schedutil governor?
                // freez(tsf->last_ticks);
                // tsf->last_ticks = NULL;
                // tsf->last_ticks_len = 0;
                continue;
            }

            if (FUNC12(tsf->last_ticks_len < lines || tsf->last_ticks == NULL)) {
                tsf->last_ticks = FUNC10(tsf->last_ticks, sizeof(struct last_ticks) * lines);
                FUNC2(tsf->last_ticks, 0, sizeof(struct last_ticks) * lines);
                tsf->last_ticks_len = lines;
            }

            f->value = 0;

            for(l = 0; l < lines - 1 ;l++) {
                unsigned long long frequency = 0, ticks = 0, ticks_since_last = 0;

                words = FUNC6(tsf->ff, l);
                if(FUNC12(words < 2)) {
                    FUNC0("Cannot read time_in_state line. Expected 2 params, read %zu.", words);
                    continue;
                }
                frequency = FUNC11(FUNC5(tsf->ff, l, 0));
                ticks     = FUNC11(FUNC5(tsf->ff, l, 1));

                // It is assumed that frequencies are static and sorted
                ticks_since_last = ticks - tsf->last_ticks[l].ticks;
                tsf->last_ticks[l].frequency = frequency;
                tsf->last_ticks[l].ticks = ticks;

                total_ticks_since_last += ticks_since_last;
                avg_freq += frequency * ticks_since_last;

            }

            if (FUNC1(total_ticks_since_last)) {
                avg_freq /= total_ticks_since_last;
                f->value = avg_freq;
            }

            if(FUNC12(keep_per_core_fds_open != CONFIG_BOOLEAN_YES)) {
                FUNC3(tsf->ff);
                tsf->ff = NULL;
            }
        }

        files_read++;

        f->found = 1;

        if(FUNC1(f->value != 0))
            files_nonzero++;
    }

    if(FUNC12(files_read == 0))
        return -1;

    if(FUNC12(files_nonzero == 0))
        return 0;

    return (int)files_nonzero;
}