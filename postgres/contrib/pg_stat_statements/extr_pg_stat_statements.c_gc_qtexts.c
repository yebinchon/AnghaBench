
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int query_len; int query_offset; } ;
typedef TYPE_1__ pgssEntry ;
struct TYPE_5__ {int extent; int mean_query_len; } ;
typedef int Size ;
typedef int HASH_SEQ_STATUS ;
typedef int FILE ;


 void* ASSUMED_LENGTH_INIT ;
 int * AllocateFile (int ,int ) ;
 int DEBUG1 ;
 scalar_t__ FreeFile (int *) ;
 int LOG ;
 int PGSS_TEXT_FILE ;
 int PG_BINARY_W ;
 int elog (int ,char*,int,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 int fileno (int *) ;
 int free (char*) ;
 scalar_t__ ftruncate (int ,int) ;
 int fwrite (char*,int,int,int *) ;
 int hash_seq_init (int *,int ) ;
 TYPE_1__* hash_seq_search (int *) ;
 int hash_seq_term (int *) ;
 int need_gc_qtexts () ;
 TYPE_2__* pgss ;
 int pgss_hash ;
 char* qtext_fetch (int,int,char*,int) ;
 char* qtext_load_file (int*) ;
 int record_gc_qtexts () ;
 int unlink (int ) ;

__attribute__((used)) static void
gc_qtexts(void)
{
 char *qbuffer;
 Size qbuffer_size;
 FILE *qfile = ((void*)0);
 HASH_SEQ_STATUS hash_seq;
 pgssEntry *entry;
 Size extent;
 int nentries;






 if (!need_gc_qtexts())
  return;
 qbuffer = qtext_load_file(&qbuffer_size);
 if (qbuffer == ((void*)0))
  goto gc_fail;







 qfile = AllocateFile(PGSS_TEXT_FILE, PG_BINARY_W);
 if (qfile == ((void*)0))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write file \"%s\": %m",
      PGSS_TEXT_FILE)));
  goto gc_fail;
 }

 extent = 0;
 nentries = 0;

 hash_seq_init(&hash_seq, pgss_hash);
 while ((entry = hash_seq_search(&hash_seq)) != ((void*)0))
 {
  int query_len = entry->query_len;
  char *qry = qtext_fetch(entry->query_offset,
           query_len,
           qbuffer,
           qbuffer_size);

  if (qry == ((void*)0))
  {

   entry->query_offset = 0;
   entry->query_len = -1;

   continue;
  }

  if (fwrite(qry, 1, query_len + 1, qfile) != query_len + 1)
  {
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not write file \"%s\": %m",
       PGSS_TEXT_FILE)));
   hash_seq_term(&hash_seq);
   goto gc_fail;
  }

  entry->query_offset = extent;
  extent += query_len + 1;
  nentries++;
 }





 if (ftruncate(fileno(qfile), extent) != 0)
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not truncate file \"%s\": %m",
      PGSS_TEXT_FILE)));

 if (FreeFile(qfile))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write file \"%s\": %m",
      PGSS_TEXT_FILE)));
  qfile = ((void*)0);
  goto gc_fail;
 }

 elog(DEBUG1, "pgss gc of queries file shrunk size from %zu to %zu",
   pgss->extent, extent);


 pgss->extent = extent;





 if (nentries > 0)
  pgss->mean_query_len = extent / nentries;
 else
  pgss->mean_query_len = ASSUMED_LENGTH_INIT;

 free(qbuffer);
 record_gc_qtexts();

 return;

gc_fail:

 if (qfile)
  FreeFile(qfile);
 if (qbuffer)
  free(qbuffer);





 hash_seq_init(&hash_seq, pgss_hash);
 while ((entry = hash_seq_search(&hash_seq)) != ((void*)0))
 {
  entry->query_offset = 0;
  entry->query_len = -1;
 }




 (void) unlink(PGSS_TEXT_FILE);
 qfile = AllocateFile(PGSS_TEXT_FILE, PG_BINARY_W);
 if (qfile == ((void*)0))
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not recreate file \"%s\": %m",
      PGSS_TEXT_FILE)));
 else
  FreeFile(qfile);


 pgss->extent = 0;


 pgss->mean_query_len = ASSUMED_LENGTH_INIT;
 record_gc_qtexts();
}
