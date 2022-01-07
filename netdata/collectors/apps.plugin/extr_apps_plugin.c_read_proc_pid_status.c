
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_stat {int status_vmsize; int status_vmrss; scalar_t__ status_rssshmem; scalar_t__ status_rssfile; scalar_t__ status_vmshared; scalar_t__ status_arl; int status_filename; int pid; int gid; int uid; scalar_t__ status_vmswap; } ;
struct kinfo_proc {int ki_size; int ki_rssize; int * ki_groups; int ki_uid; } ;
struct arl_callback_ptr {size_t line; int * ff; struct pid_stat* p; } ;
typedef int procfile ;


 int FILENAME_MAX ;
 int PROCFILE_FLAG_NO_ERROR_ON_FILE_IO ;
 int arl_begin (scalar_t__) ;
 int arl_callback_status_gid ;
 int arl_callback_status_rssfile ;
 int arl_callback_status_rssshmem ;
 int arl_callback_status_uid ;
 int arl_callback_status_vmrss ;
 int arl_callback_status_vmsize ;
 int arl_callback_status_vmswap ;
 int arl_check (scalar_t__,int ,int ) ;
 scalar_t__ arl_create (char*,int *,int) ;
 int arl_expect_custom (scalar_t__,char*,int ,struct arl_callback_ptr*) ;
 int calls_counter ;
 int netdata_configured_host_prefix ;
 int pagesize ;
 size_t procfile_lines (int *) ;
 int procfile_lineword (int *,size_t,int) ;
 int * procfile_readall (int *) ;
 int * procfile_reopen (int *,int ,char*,int ) ;
 int snprintfz (char*,int ,char*,int ,int ) ;
 int strdupz (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int read_proc_pid_status(struct pid_stat *p, void *ptr) {
    p->status_vmsize = 0;
    p->status_vmrss = 0;
    p->status_vmshared = 0;
    p->status_rssfile = 0;
    p->status_rssshmem = 0;
    p->status_vmswap = 0;
    (void)ptr;

    static struct arl_callback_ptr arl_ptr;
    static procfile *ff = ((void*)0);

    if(unlikely(!p->status_arl)) {
        p->status_arl = arl_create("/proc/pid/status", ((void*)0), 60);
        arl_expect_custom(p->status_arl, "Uid", arl_callback_status_uid, &arl_ptr);
        arl_expect_custom(p->status_arl, "Gid", arl_callback_status_gid, &arl_ptr);
        arl_expect_custom(p->status_arl, "VmSize", arl_callback_status_vmsize, &arl_ptr);
        arl_expect_custom(p->status_arl, "VmRSS", arl_callback_status_vmrss, &arl_ptr);
        arl_expect_custom(p->status_arl, "RssFile", arl_callback_status_rssfile, &arl_ptr);
        arl_expect_custom(p->status_arl, "RssShmem", arl_callback_status_rssshmem, &arl_ptr);
        arl_expect_custom(p->status_arl, "VmSwap", arl_callback_status_vmswap, &arl_ptr);
    }

    if(unlikely(!p->status_filename)) {
        char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s/proc/%d/status", netdata_configured_host_prefix, p->pid);
        p->status_filename = strdupz(filename);
    }

    ff = procfile_reopen(ff, p->status_filename, (!ff)?" \t:,-()/":((void*)0), PROCFILE_FLAG_NO_ERROR_ON_FILE_IO);
    if(unlikely(!ff)) return 0;

    ff = procfile_readall(ff);
    if(unlikely(!ff)) return 0;

    calls_counter++;


    arl_ptr.p = p;
    arl_ptr.ff = ff;

    size_t lines = procfile_lines(ff), l;
    arl_begin(p->status_arl);

    for(l = 0; l < lines ;l++) {

        arl_ptr.line = l;
        if(unlikely(arl_check(p->status_arl,
                procfile_lineword(ff, l, 0),
                procfile_lineword(ff, l, 1)))) break;
    }

    p->status_vmshared = p->status_rssfile + p->status_rssshmem;



    return 1;

}
