
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {int dirty; TYPE_1__ data; } ;
typedef TYPE_2__ ReplicationSlot ;


 int END_CRIT_SECTION () ;
 int ERROR ;
 int MAXPGPATH ;
 scalar_t__ MakePGDirectory (char*) ;
 char* NameStr (int ) ;
 int START_CRIT_SECTION () ;
 scalar_t__ S_ISDIR (int ) ;
 int SaveSlotToPath (TYPE_2__*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,...) ;
 int fsync_fname (char*,int) ;
 scalar_t__ rename (char*,char*) ;
 int rmtree (char*,int) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static void
CreateSlotOnDisk(ReplicationSlot *slot)
{
 char tmppath[MAXPGPATH];
 char path[MAXPGPATH];
 struct stat st;







 sprintf(path, "pg_replslot/%s", NameStr(slot->data.name));
 sprintf(tmppath, "pg_replslot/%s.tmp", NameStr(slot->data.name));
 if (stat(tmppath, &st) == 0 && S_ISDIR(st.st_mode))
  rmtree(tmppath, 1);


 if (MakePGDirectory(tmppath) < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not create directory \"%s\": %m",
      tmppath)));
 fsync_fname(tmppath, 1);


 slot->dirty = 1;
 SaveSlotToPath(slot, tmppath, ERROR);


 if (rename(tmppath, path) != 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not rename file \"%s\" to \"%s\": %m",
      tmppath, path)));






 START_CRIT_SECTION();

 fsync_fname(path, 1);
 fsync_fname("pg_replslot", 1);

 END_CRIT_SECTION();
}
