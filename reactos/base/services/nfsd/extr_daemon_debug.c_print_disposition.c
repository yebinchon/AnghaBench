
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ FILE_CREATE ;
 scalar_t__ FILE_OPEN ;
 scalar_t__ FILE_OPEN_IF ;
 scalar_t__ FILE_OVERWRITE ;
 scalar_t__ FILE_OVERWRITE_IF ;
 scalar_t__ FILE_SUPERSEDE ;
 int dlog_file ;
 int fprintf (int ,char*) ;
 int g_debug_level ;

void print_disposition(int level, DWORD disposition) {
    if (level > g_debug_level) return;
    fprintf(dlog_file, "userland disposition = ");
    if (disposition == FILE_SUPERSEDE)
        fprintf(dlog_file, "FILE_SUPERSEDE\n");
    else if (disposition == FILE_CREATE)
        fprintf(dlog_file, "FILE_CREATE\n");
    else if (disposition == FILE_OPEN)
        fprintf(dlog_file, "FILE_OPEN\n");
    else if (disposition == FILE_OPEN_IF)
        fprintf(dlog_file, "FILE_OPEN_IF\n");
    else if (disposition == FILE_OVERWRITE)
        fprintf(dlog_file, "FILE_OVERWRITE\n");
    else if (disposition == FILE_OVERWRITE_IF)
        fprintf(dlog_file, "FILE_OVERWRITE_IF\n");
}
