
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int fd; int fileName; } ;
typedef size_t File ;


 int Assert (int ) ;
 int DO_DB (int ) ;
 int FileAccess (size_t) ;
 int FileIsValid (size_t) ;
 int LOG ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,size_t,int ) ;
 int pg_fsync (int ) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;

int
FileSync(File file, uint32 wait_event_info)
{
 int returnCode;

 Assert(FileIsValid(file));

 DO_DB(elog(LOG, "FileSync: %d (%s)",
      file, VfdCache[file].fileName));

 returnCode = FileAccess(file);
 if (returnCode < 0)
  return returnCode;

 pgstat_report_wait_start(wait_event_info);
 returnCode = pg_fsync(VfdCache[file].fd);
 pgstat_report_wait_end();

 return returnCode;
}
