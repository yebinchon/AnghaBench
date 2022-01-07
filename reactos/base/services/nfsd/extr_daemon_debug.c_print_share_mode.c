
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int dlog_file ;
 int fprintf (int ,char*) ;
 int g_debug_level ;

void print_share_mode(int level, DWORD mode)
{
    if (level > g_debug_level) return;
    fprintf(dlog_file, "share mode: ");
    if (mode & FILE_SHARE_READ)
        fprintf(dlog_file, "READ ");
    if (mode & FILE_SHARE_WRITE)
        fprintf(dlog_file, "WRITE ");
    if (mode & FILE_SHARE_DELETE)
        fprintf(dlog_file, "DELETE");
    fprintf(dlog_file, "\n");
}
