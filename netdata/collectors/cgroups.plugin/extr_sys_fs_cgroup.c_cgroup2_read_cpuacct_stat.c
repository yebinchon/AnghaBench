
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuacct_stat {int updated; scalar_t__ enabled; void* system; void* user; int filename; } ;
typedef int procfile ;


 scalar_t__ CONFIG_BOOLEAN_AUTO ;
 scalar_t__ CONFIG_BOOLEAN_YES ;
 int PROCFILE_FLAG_DEFAULT ;
 int cgroups_check ;
 int error (char*,int ) ;
 scalar_t__ likely (int ) ;
 scalar_t__ netdata_zero_metrics_enabled ;
 unsigned long procfile_lines (int *) ;
 int procfile_lineword (int *,int,int) ;
 int * procfile_readall (int *) ;
 int * procfile_reopen (int *,int ,int *,int ) ;
 void* str2ull (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void cgroup2_read_cpuacct_stat(struct cpuacct_stat *cp) {
    static procfile *ff = ((void*)0);

    if(likely(cp->filename)) {
        ff = procfile_reopen(ff, cp->filename, ((void*)0), PROCFILE_FLAG_DEFAULT);
        if(unlikely(!ff)) {
            cp->updated = 0;
            cgroups_check = 1;
            return;
        }

        ff = procfile_readall(ff);
        if(unlikely(!ff)) {
            cp->updated = 0;
            cgroups_check = 1;
            return;
        }

        unsigned long lines = procfile_lines(ff);

        if(unlikely(lines < 3)) {
            error("CGROUP: file '%s' should have 3+ lines.", cp->filename);
            cp->updated = 0;
            return;
        }

        cp->user = str2ull(procfile_lineword(ff, 1, 1));
        cp->system = str2ull(procfile_lineword(ff, 2, 1));

        cp->updated = 1;

        if(unlikely(cp->enabled == CONFIG_BOOLEAN_AUTO &&
                    (cp->user || cp->system || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES)))
            cp->enabled = CONFIG_BOOLEAN_YES;
    }
}
