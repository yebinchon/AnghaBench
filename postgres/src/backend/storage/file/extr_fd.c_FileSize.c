
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_2__ {int fd; int fileName; } ;
typedef size_t File ;


 int Assert (int ) ;
 int DO_DB (int ) ;
 scalar_t__ FileAccess (size_t) ;
 scalar_t__ FileIsNotOpen (size_t) ;
 int FileIsValid (size_t) ;
 int LOG ;
 int SEEK_END ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,size_t,int ) ;
 int lseek (int ,int ,int ) ;

off_t
FileSize(File file)
{
 Assert(FileIsValid(file));

 DO_DB(elog(LOG, "FileSize %d (%s)",
      file, VfdCache[file].fileName));

 if (FileIsNotOpen(file))
 {
  if (FileAccess(file) < 0)
   return (off_t) -1;
 }

 return lseek(VfdCache[file].fd, 0, SEEK_END);
}
