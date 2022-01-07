
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLastError () ;
 int ReportStatusToSCMgr (int ,int ,int ) ;
 int SERVICE_STOPPED ;
 int * dlog_file ;
 int * elog_file ;
 int exit (int ) ;
 void* fopen (char const*,char const*) ;
 scalar_t__ g_debug_level ;

void open_log_files()
{
    const char dfile[] = "nfsddbg.log";
    const char efile[] = "nfsderr.log";
    const char mode[] = "w";
    if (g_debug_level > 0) {
        dlog_file = fopen(dfile, mode);
        if (dlog_file == ((void*)0)) {
            ReportStatusToSCMgr(SERVICE_STOPPED, GetLastError(), 0);
            exit (GetLastError());
        }
    }
    elog_file = fopen(efile, mode);
    if (elog_file == ((void*)0)) {
        ReportStatusToSCMgr(SERVICE_STOPPED, GetLastError(), 0);
        exit (GetLastError());
    }
}
