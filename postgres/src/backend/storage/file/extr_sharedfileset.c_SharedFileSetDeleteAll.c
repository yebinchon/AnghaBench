
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ntablespaces; int * tablespaces; } ;
typedef TYPE_1__ SharedFileSet ;


 int MAXPGPATH ;
 int PathNameDeleteTemporaryDir (char*) ;
 int SharedFileSetPath (char*,TYPE_1__*,int ) ;

void
SharedFileSetDeleteAll(SharedFileSet *fileset)
{
 char dirpath[MAXPGPATH];
 int i;






 for (i = 0; i < fileset->ntablespaces; ++i)
 {
  SharedFileSetPath(dirpath, fileset, fileset->tablespaces[i]);
  PathNameDeleteTemporaryDir(dirpath);
 }
}
