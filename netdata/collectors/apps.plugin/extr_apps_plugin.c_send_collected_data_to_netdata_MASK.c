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
struct target {unsigned long long processes; int utime; int stime; int gtime; int cutime; int cstime; int cgtime; unsigned long long num_threads; scalar_t__ starttime; unsigned long long uptime_min; unsigned long long uptime_sum; unsigned long long uptime_max; scalar_t__ status_vmrss; scalar_t__ status_vmshared; unsigned long long status_vmsize; unsigned long long status_vmswap; int minflt; int cminflt; int majflt; int cmajflt; unsigned long long io_logical_bytes_read; unsigned long long io_logical_bytes_written; unsigned long long io_storage_bytes_read; unsigned long long io_storage_bytes_written; unsigned long long openfiles; unsigned long long opensockets; unsigned long long openpipes; int /*<<< orphan*/  name; scalar_t__ exposed; struct target* next; } ;
typedef  unsigned long long kernel_uint_t ;

/* Variables and functions */
 int cgtime_fix_ratio ; 
 int cmajflt_fix_ratio ; 
 int cminflt_fix_ratio ; 
 int cstime_fix_ratio ; 
 int cutime_fix_ratio ; 
 scalar_t__ enable_file_charts ; 
 scalar_t__ global_uptime ; 
 int gtime_fix_ratio ; 
 scalar_t__ include_exited_childs ; 
 int majflt_fix_ratio ; 
 int minflt_fix_ratio ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ show_guest_time ; 
 int stime_fix_ratio ; 
 scalar_t__ FUNC3 (int) ; 
 int utime_fix_ratio ; 

__attribute__((used)) static void FUNC4(struct target *root, const char *type, usec_t dt) {
    struct target *w;

    FUNC0(type, "cpu", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, (kernel_uint_t)(w->utime * utime_fix_ratio) + (kernel_uint_t)(w->stime * stime_fix_ratio) + (kernel_uint_t)(w->gtime * gtime_fix_ratio) + (include_exited_childs?((kernel_uint_t)(w->cutime * cutime_fix_ratio) + (kernel_uint_t)(w->cstime * cstime_fix_ratio) + (kernel_uint_t)(w->cgtime * cgtime_fix_ratio)):0ULL));
    }
    FUNC1();

    FUNC0(type, "cpu_user", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, (kernel_uint_t)(w->utime * utime_fix_ratio) + (include_exited_childs?((kernel_uint_t)(w->cutime * cutime_fix_ratio)):0ULL));
    }
    FUNC1();

    FUNC0(type, "cpu_system", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, (kernel_uint_t)(w->stime * stime_fix_ratio) + (include_exited_childs?((kernel_uint_t)(w->cstime * cstime_fix_ratio)):0ULL));
    }
    FUNC1();

    if(show_guest_time) {
        FUNC0(type, "cpu_guest", dt);
        for (w = root; w ; w = w->next) {
            if(FUNC3(w->exposed && w->processes))
                FUNC2(w->name, (kernel_uint_t)(w->gtime * gtime_fix_ratio) + (include_exited_childs?((kernel_uint_t)(w->cgtime * cgtime_fix_ratio)):0ULL));
        }
        FUNC1();
    }

    FUNC0(type, "threads", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->num_threads);
    }
    FUNC1();

    FUNC0(type, "processes", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->processes);
    }
    FUNC1();

#ifndef __FreeBSD__
    FUNC0(type, "uptime", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, (global_uptime > w->starttime)?(global_uptime - w->starttime):0);
    }
    FUNC1();

    FUNC0(type, "uptime_min", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->uptime_min);
    }
    FUNC1();

    FUNC0(type, "uptime_avg", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->uptime_sum / w->processes);
    }
    FUNC1();

    FUNC0(type, "uptime_max", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->uptime_max);
    }
    FUNC1();
#endif

    FUNC0(type, "mem", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, (w->status_vmrss > w->status_vmshared)?(w->status_vmrss - w->status_vmshared):0ULL);
    }
    FUNC1();

    FUNC0(type, "vmem", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->status_vmsize);
    }
    FUNC1();

#ifndef __FreeBSD__
    FUNC0(type, "swap", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->status_vmswap);
    }
    FUNC1();
#endif

    FUNC0(type, "minor_faults", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, (kernel_uint_t)(w->minflt * minflt_fix_ratio) + (include_exited_childs?((kernel_uint_t)(w->cminflt * cminflt_fix_ratio)):0ULL));
    }
    FUNC1();

    FUNC0(type, "major_faults", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, (kernel_uint_t)(w->majflt * majflt_fix_ratio) + (include_exited_childs?((kernel_uint_t)(w->cmajflt * cmajflt_fix_ratio)):0ULL));
    }
    FUNC1();

#ifndef __FreeBSD__
    FUNC0(type, "lreads", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->io_logical_bytes_read);
    }
    FUNC1();

    FUNC0(type, "lwrites", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->io_logical_bytes_written);
    }
    FUNC1();
#endif

    FUNC0(type, "preads", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->io_storage_bytes_read);
    }
    FUNC1();

    FUNC0(type, "pwrites", dt);
    for (w = root; w ; w = w->next) {
        if(FUNC3(w->exposed && w->processes))
            FUNC2(w->name, w->io_storage_bytes_written);
    }
    FUNC1();

    if(enable_file_charts) {
        FUNC0(type, "files", dt);
        for (w = root; w; w = w->next) {
            if (FUNC3(w->exposed && w->processes))
                FUNC2(w->name, w->openfiles);
        }
        FUNC1();

        FUNC0(type, "sockets", dt);
        for (w = root; w; w = w->next) {
            if (FUNC3(w->exposed && w->processes))
                FUNC2(w->name, w->opensockets);
        }
        FUNC1();

        FUNC0(type, "pipes", dt);
        for (w = root; w; w = w->next) {
            if (FUNC3(w->exposed && w->processes))
                FUNC2(w->name, w->openpipes);
        }
        FUNC1();
    }
}