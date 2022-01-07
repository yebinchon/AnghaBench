
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dlog_file ;
 scalar_t__ elog_file ;
 int fclose (scalar_t__) ;

void close_log_files()
{
    if (dlog_file) fclose(dlog_file);
    if (elog_file) fclose(elog_file);
}
