
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ creator_pid; int number; } ;
typedef TYPE_1__ SharedFileSet ;
typedef int Oid ;


 int MAXPGPATH ;
 char* PG_TEMP_FILE_PREFIX ;
 int TempTablespacePath (char*,int ) ;
 int snprintf (char*,int,char*,char*,char*,unsigned long,int ) ;

__attribute__((used)) static void
SharedFileSetPath(char *path, SharedFileSet *fileset, Oid tablespace)
{
 char tempdirpath[MAXPGPATH];

 TempTablespacePath(tempdirpath, tablespace);
 snprintf(path, MAXPGPATH, "%s/%s%lu.%u.sharedfileset",
    tempdirpath, PG_TEMP_FILE_PREFIX,
    (unsigned long) fileset->creator_pid, fileset->number);
}
