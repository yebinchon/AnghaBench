
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_stat {scalar_t__ io_storage_bytes_written; scalar_t__ io_storage_bytes_read; scalar_t__ io_logical_bytes_written; scalar_t__ io_logical_bytes_read; int io_collected_usec; int last_io_collected_usec; int io_filename; int pid; } ;
struct TYPE_2__ {int ru_oublock; int ru_inblock; } ;
struct kinfo_proc {TYPE_1__ ki_rusage; } ;
typedef int procfile ;


 int FILENAME_MAX ;
 int PROCFILE_FLAG_NO_ERROR_ON_FILE_IO ;
 int calls_counter ;
 int global_iterations_counter ;
 int io ;
 int netdata_configured_host_prefix ;
 int now_monotonic_usec () ;
 int pid_incremental_rate (int ,scalar_t__,int ) ;
 int procfile_lineword (int *,int,int) ;
 int * procfile_readall (int *) ;
 int * procfile_reopen (int *,int ,int *,int ) ;
 int snprintfz (char*,int ,char*,int ,int ) ;
 int str2kernel_uint_t (int ) ;
 int strdupz (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int read_proc_pid_io(struct pid_stat *p, void *ptr) {
    (void)ptr;



    static procfile *ff = ((void*)0);

    if(unlikely(!p->io_filename)) {
        char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s/proc/%d/io", netdata_configured_host_prefix, p->pid);
        p->io_filename = strdupz(filename);
    }


    ff = procfile_reopen(ff, p->io_filename, ((void*)0), PROCFILE_FLAG_NO_ERROR_ON_FILE_IO);
    if(unlikely(!ff)) goto cleanup;

    ff = procfile_readall(ff);
    if(unlikely(!ff)) goto cleanup;


    calls_counter++;

    p->last_io_collected_usec = p->io_collected_usec;
    p->io_collected_usec = now_monotonic_usec();





    pid_incremental_rate(io, p->io_logical_bytes_read, str2kernel_uint_t(procfile_lineword(ff, 0, 1)));
    pid_incremental_rate(io, p->io_logical_bytes_written, str2kernel_uint_t(procfile_lineword(ff, 1, 1)));


    pid_incremental_rate(io, p->io_storage_bytes_read, str2kernel_uint_t(procfile_lineword(ff, 4, 1)));
    pid_incremental_rate(io, p->io_storage_bytes_written, str2kernel_uint_t(procfile_lineword(ff, 5, 1)));



    if(unlikely(global_iterations_counter == 1)) {
        p->io_logical_bytes_read = 0;
        p->io_logical_bytes_written = 0;


        p->io_storage_bytes_read = 0;
        p->io_storage_bytes_written = 0;

    }

    return 1;


cleanup:
    p->io_logical_bytes_read = 0;
    p->io_logical_bytes_written = 0;


    p->io_storage_bytes_read = 0;
    p->io_storage_bytes_written = 0;

    return 0;

}
