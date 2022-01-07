
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lruLessRecently; int fileName; } ;
typedef size_t File ;


 int DO_DB (int ) ;
 int Delete (size_t) ;
 scalar_t__ FileIsNotOpen (size_t) ;
 int Insert (size_t) ;
 int LOG ;
 int LruInsert (size_t) ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,size_t,int ) ;

__attribute__((used)) static int
FileAccess(File file)
{
 int returnValue;

 DO_DB(elog(LOG, "FileAccess %d (%s)",
      file, VfdCache[file].fileName));






 if (FileIsNotOpen(file))
 {
  returnValue = LruInsert(file);
  if (returnValue != 0)
   return returnValue;
 }
 else if (VfdCache[0].lruLessRecently != file)
 {





  Delete(file);
  Insert(file);
 }

 return 0;
}
