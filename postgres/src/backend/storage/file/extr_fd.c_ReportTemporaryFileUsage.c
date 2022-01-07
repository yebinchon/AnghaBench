
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int LOG ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,unsigned long) ;
 int log_temp_files ;
 int pgstat_report_tempfile (int) ;

__attribute__((used)) static void
ReportTemporaryFileUsage(const char *path, off_t size)
{
 pgstat_report_tempfile(size);

 if (log_temp_files >= 0)
 {
  if ((size / 1024) >= log_temp_files)
   ereport(LOG,
     (errmsg("temporary file: path \"%s\", size %lu",
       path, (unsigned long) size)));
 }
}
