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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(int update_every, usec_t dt) {
    (void)dt;
    static int mib_bytes[5] = {0, 0, 0, 0, 0}, mib_success[5] = {0, 0, 0, 0, 0},
               mib_failed[5] = {0, 0, 0, 0, 0}, mib_unsupported[5] = {0, 0, 0, 0, 0};
    uint64_t bytes, success, failed, unsupported;

    if (FUNC7(FUNC0("kstat.zfs.misc.zio_trim.bytes", mib_bytes, bytes) ||
                 FUNC0("kstat.zfs.misc.zio_trim.success", mib_success, success) ||
                 FUNC0("kstat.zfs.misc.zio_trim.failed", mib_failed, failed) ||
                 FUNC0("kstat.zfs.misc.zio_trim.unsupported", mib_unsupported, unsupported))) {
        FUNC1("DISABLED: zfs.trim_bytes chart");
        FUNC1("DISABLED: zfs.trim_success chart");
        FUNC1("DISABLED: kstat.zfs.misc.zio_trim module");
        return 1;
     } else {

     // --------------------------------------------------------------------

        static RRDSET *st_bytes = NULL;
        static RRDDIM *rd_bytes = NULL;

        if (FUNC7(!st_bytes)) {
            st_bytes = FUNC4(
                    "zfs",
                    "trim_bytes",
                    NULL,
                    "trim",
                    NULL,
                    "Successfully TRIMmed bytes",
                    "bytes",
                    "freebsd",
                    "zfs",
                    2320,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd_bytes = FUNC2(st_bytes, "TRIMmed", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else FUNC6(st_bytes);

        FUNC3(st_bytes, rd_bytes, bytes);
        FUNC5(st_bytes);

        // --------------------------------------------------------------------

        static RRDSET *st_requests = NULL;
        static RRDDIM *rd_successful = NULL, *rd_failed = NULL, *rd_unsupported = NULL;

        if (FUNC7(!st_requests)) {
            st_requests = FUNC4(
                    "zfs",
                    "trim_requests",
                    NULL,
                    "trim",
                    NULL,
                    "TRIM requests",
                    "requests",
                    "freebsd",
                    "zfs",
                    2321,
                    update_every,
                    RRDSET_TYPE_STACKED
            );

            rd_successful  = FUNC2(st_requests, "successful",  NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_failed      = FUNC2(st_requests, "failed",      NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_unsupported = FUNC2(st_requests, "unsupported", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else FUNC6(st_requests);

        FUNC3(st_requests, rd_successful,  success);
        FUNC3(st_requests, rd_failed,      failed);
        FUNC3(st_requests, rd_unsupported, unsupported);
        FUNC5(st_requests);

     }

    return 0;
}