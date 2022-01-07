
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLastError () ;




 int dlog_file ;
 int fprintf (int ,char*,...) ;
 int g_debug_level ;

void print_condwait_status(int level, int status)
{
    if (level > g_debug_level) return;
    switch(status) {
        case 131: fprintf(dlog_file, "WAIT_ABANDONED\n"); break;
        case 129: fprintf(dlog_file, "WAIT_OBJECT_0\n"); break;
        case 128: fprintf(dlog_file, "WAIT_TIMEOUT\n"); break;
        case 130: fprintf(dlog_file, "WAIT_FAILED %d\n", GetLastError());
        default: fprintf(dlog_file, "unknown status =%d\n", status);
    }
}
