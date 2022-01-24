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
typedef  int /*<<< orphan*/  collected_number ;

/* Variables and functions */
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ read_proc_uptime_ff ; 
 double FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline collected_number FUNC8(char *filename) {
    if(FUNC7(!read_proc_uptime_ff)) {
        read_proc_uptime_ff = FUNC4(filename, " \t", PROCFILE_FLAG_DEFAULT);
        if(FUNC7(!read_proc_uptime_ff)) return 0;
    }

    read_proc_uptime_ff = FUNC5(read_proc_uptime_ff);
    if(FUNC7(!read_proc_uptime_ff)) return 0;

    if(FUNC7(FUNC1(read_proc_uptime_ff) < 1)) {
        FUNC0("/proc/uptime has no lines.");
        return 0;
    }
    if(FUNC7(FUNC3(read_proc_uptime_ff, 0) < 1)) {
        FUNC0("/proc/uptime has less than 1 word in it.");
        return 0;
    }

    return (collected_number)(FUNC6(FUNC2(read_proc_uptime_ff, 0, 0), NULL) * 1000.0);
}