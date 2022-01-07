
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int uint64_t ;
typedef int RRDSET ;
typedef int RRDDIM ;


 scalar_t__ GETSYSCTL_SIMPLE (char*,int*,int ) ;
 int RRDSET_TYPE_LINE ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int error (char*) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int ) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_kstat_zfs_misc_zio_trim(int update_every, usec_t dt) {
    (void)dt;
    static int mib_bytes[5] = {0, 0, 0, 0, 0}, mib_success[5] = {0, 0, 0, 0, 0},
               mib_failed[5] = {0, 0, 0, 0, 0}, mib_unsupported[5] = {0, 0, 0, 0, 0};
    uint64_t bytes, success, failed, unsupported;

    if (unlikely(GETSYSCTL_SIMPLE("kstat.zfs.misc.zio_trim.bytes", mib_bytes, bytes) ||
                 GETSYSCTL_SIMPLE("kstat.zfs.misc.zio_trim.success", mib_success, success) ||
                 GETSYSCTL_SIMPLE("kstat.zfs.misc.zio_trim.failed", mib_failed, failed) ||
                 GETSYSCTL_SIMPLE("kstat.zfs.misc.zio_trim.unsupported", mib_unsupported, unsupported))) {
        error("DISABLED: zfs.trim_bytes chart");
        error("DISABLED: zfs.trim_success chart");
        error("DISABLED: kstat.zfs.misc.zio_trim module");
        return 1;
     } else {



        static RRDSET *st_bytes = ((void*)0);
        static RRDDIM *rd_bytes = ((void*)0);

        if (unlikely(!st_bytes)) {
            st_bytes = rrdset_create_localhost(
                    "zfs",
                    "trim_bytes",
                    ((void*)0),
                    "trim",
                    ((void*)0),
                    "Successfully TRIMmed bytes",
                    "bytes",
                    "freebsd",
                    "zfs",
                    2320,
                    update_every,
                    RRDSET_TYPE_LINE
            );

            rd_bytes = rrddim_add(st_bytes, "TRIMmed", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st_bytes);

        rrddim_set_by_pointer(st_bytes, rd_bytes, bytes);
        rrdset_done(st_bytes);



        static RRDSET *st_requests = ((void*)0);
        static RRDDIM *rd_successful = ((void*)0), *rd_failed = ((void*)0), *rd_unsupported = ((void*)0);

        if (unlikely(!st_requests)) {
            st_requests = rrdset_create_localhost(
                    "zfs",
                    "trim_requests",
                    ((void*)0),
                    "trim",
                    ((void*)0),
                    "TRIM requests",
                    "requests",
                    "freebsd",
                    "zfs",
                    2321,
                    update_every,
                    RRDSET_TYPE_STACKED
            );

            rd_successful = rrddim_add(st_requests, "successful", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_failed = rrddim_add(st_requests, "failed", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
            rd_unsupported = rrddim_add(st_requests, "unsupported", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
        }
        else rrdset_next(st_requests);

        rrddim_set_by_pointer(st_requests, rd_successful, success);
        rrddim_set_by_pointer(st_requests, rd_failed, failed);
        rrddim_set_by_pointer(st_requests, rd_unsupported, unsupported);
        rrdset_done(st_requests);

     }

    return 0;
}
