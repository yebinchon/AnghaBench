
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ fileSize; int fdstate; int fd; int fileName; } ;
typedef size_t File ;


 int Assert (int) ;
 int DO_DB (int ) ;
 int FD_TEMP_FILE_LIMIT ;
 int FileAccess (size_t) ;
 int FileIsValid (size_t) ;
 int LOG ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,size_t,int ) ;
 int ftruncate (int ,scalar_t__) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int temporary_files_size ;

int
FileTruncate(File file, off_t offset, uint32 wait_event_info)
{
 int returnCode;

 Assert(FileIsValid(file));

 DO_DB(elog(LOG, "FileTruncate %d (%s)",
      file, VfdCache[file].fileName));

 returnCode = FileAccess(file);
 if (returnCode < 0)
  return returnCode;

 pgstat_report_wait_start(wait_event_info);
 returnCode = ftruncate(VfdCache[file].fd, offset);
 pgstat_report_wait_end();

 if (returnCode == 0 && VfdCache[file].fileSize > offset)
 {

  Assert(VfdCache[file].fdstate & FD_TEMP_FILE_LIMIT);
  temporary_files_size -= VfdCache[file].fileSize - offset;
  VfdCache[file].fileSize = offset;
 }

 return returnCode;
}
