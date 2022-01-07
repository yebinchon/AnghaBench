
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int new_tid; int new_node; int old_tid; int old_node; } ;
struct TYPE_7__ {scalar_t__ cmin; scalar_t__ cmax; int combocid; } ;
struct TYPE_6__ {int tid; int relnode; } ;
typedef TYPE_1__ ReorderBufferTupleCidKey ;
typedef TYPE_2__ ReorderBufferTupleCidEnt ;
typedef int Oid ;
typedef TYPE_3__ LogicalRewriteMappingData ;
typedef int HTAB ;


 int Assert (int) ;
 scalar_t__ CloseTransientFile (int) ;
 int ERROR ;
 int HASH_ENTER ;
 int HASH_FIND ;
 scalar_t__ InvalidCommandId ;
 int ItemPointerCopy (int *,int *) ;
 int MAXPGPATH ;
 int O_RDONLY ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 int WAIT_EVENT_REORDER_LOGICAL_MAPPING_READ ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,...) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int read (int,TYPE_3__*,int) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static void
ApplyLogicalMappingFile(HTAB *tuplecid_data, Oid relid, const char *fname)
{
 char path[MAXPGPATH];
 int fd;
 int readBytes;
 LogicalRewriteMappingData map;

 sprintf(path, "pg_logical/mappings/%s", fname);
 fd = OpenTransientFile(path, O_RDONLY | PG_BINARY);
 if (fd < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m", path)));

 while (1)
 {
  ReorderBufferTupleCidKey key;
  ReorderBufferTupleCidEnt *ent;
  ReorderBufferTupleCidEnt *new_ent;
  bool found;


  memset(&key, 0, sizeof(ReorderBufferTupleCidKey));


  pgstat_report_wait_start(WAIT_EVENT_REORDER_LOGICAL_MAPPING_READ);
  readBytes = read(fd, &map, sizeof(LogicalRewriteMappingData));
  pgstat_report_wait_end();

  if (readBytes < 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not read file \"%s\": %m",
       path)));
  else if (readBytes == 0)
   break;
  else if (readBytes != sizeof(LogicalRewriteMappingData))
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not read from file \"%s\": read %d instead of %d bytes",
       path, readBytes,
       (int32) sizeof(LogicalRewriteMappingData))));

  key.relnode = map.old_node;
  ItemPointerCopy(&map.old_tid,
      &key.tid);


  ent = (ReorderBufferTupleCidEnt *)
   hash_search(tuplecid_data,
      (void *) &key,
      HASH_FIND,
      ((void*)0));


  if (!ent)
   continue;

  key.relnode = map.new_node;
  ItemPointerCopy(&map.new_tid,
      &key.tid);

  new_ent = (ReorderBufferTupleCidEnt *)
   hash_search(tuplecid_data,
      (void *) &key,
      HASH_ENTER,
      &found);

  if (found)
  {





   Assert(ent->cmin == InvalidCommandId || ent->cmin == new_ent->cmin);
   Assert(ent->cmax == InvalidCommandId || ent->cmax == new_ent->cmax);
  }
  else
  {

   new_ent->cmin = ent->cmin;
   new_ent->cmax = ent->cmax;
   new_ent->combocid = ent->combocid;
  }
 }

 if (CloseTransientFile(fd) != 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m", path)));
}
