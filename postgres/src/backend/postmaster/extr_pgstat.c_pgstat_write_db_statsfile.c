
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
typedef int format_id ;
struct TYPE_3__ {int functions; int tables; int databaseid; } ;
typedef int PgStat_StatTabEntry ;
typedef int PgStat_StatFuncEntry ;
typedef TYPE_1__ PgStat_StatDBEntry ;
typedef int Oid ;
typedef int HASH_SEQ_STATUS ;
typedef int FILE ;


 int * AllocateFile (char*,int ) ;
 int DEBUG2 ;
 scalar_t__ FreeFile (int *) ;
 int LOG ;
 int MAXPGPATH ;
 int PGSTAT_FILE_FORMAT_ID ;
 int PG_BINARY_W ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,...) ;
 scalar_t__ ferror (int *) ;
 int fputc (char,int *) ;
 int fwrite (int *,int,int,int *) ;
 int get_dbstat_filename (int,int,int ,char*,int) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 scalar_t__ rename (char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static void
pgstat_write_db_statsfile(PgStat_StatDBEntry *dbentry, bool permanent)
{
 HASH_SEQ_STATUS tstat;
 HASH_SEQ_STATUS fstat;
 PgStat_StatTabEntry *tabentry;
 PgStat_StatFuncEntry *funcentry;
 FILE *fpout;
 int32 format_id;
 Oid dbid = dbentry->databaseid;
 int rc;
 char tmpfile[MAXPGPATH];
 char statfile[MAXPGPATH];

 get_dbstat_filename(permanent, 1, dbid, tmpfile, MAXPGPATH);
 get_dbstat_filename(permanent, 0, dbid, statfile, MAXPGPATH);

 elog(DEBUG2, "writing stats file \"%s\"", statfile);




 fpout = AllocateFile(tmpfile, PG_BINARY_W);
 if (fpout == ((void*)0))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not open temporary statistics file \"%s\": %m",
      tmpfile)));
  return;
 }




 format_id = PGSTAT_FILE_FORMAT_ID;
 rc = fwrite(&format_id, sizeof(format_id), 1, fpout);
 (void) rc;




 hash_seq_init(&tstat, dbentry->tables);
 while ((tabentry = (PgStat_StatTabEntry *) hash_seq_search(&tstat)) != ((void*)0))
 {
  fputc('T', fpout);
  rc = fwrite(tabentry, sizeof(PgStat_StatTabEntry), 1, fpout);
  (void) rc;
 }




 hash_seq_init(&fstat, dbentry->functions);
 while ((funcentry = (PgStat_StatFuncEntry *) hash_seq_search(&fstat)) != ((void*)0))
 {
  fputc('F', fpout);
  rc = fwrite(funcentry, sizeof(PgStat_StatFuncEntry), 1, fpout);
  (void) rc;
 }






 fputc('E', fpout);

 if (ferror(fpout))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write temporary statistics file \"%s\": %m",
      tmpfile)));
  FreeFile(fpout);
  unlink(tmpfile);
 }
 else if (FreeFile(fpout) < 0)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not close temporary statistics file \"%s\": %m",
      tmpfile)));
  unlink(tmpfile);
 }
 else if (rename(tmpfile, statfile) < 0)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not rename temporary statistics file \"%s\" to \"%s\": %m",
      tmpfile, statfile)));
  unlink(tmpfile);
 }

 if (permanent)
 {
  get_dbstat_filename(0, 0, dbid, statfile, MAXPGPATH);

  elog(DEBUG2, "removing temporary stats file \"%s\"", statfile);
  unlink(statfile);
 }
}
