
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tempfilename ;
typedef int magic ;
typedef int int16 ;
typedef int finalfilename ;
struct TYPE_11__ {TYPE_2__* reldesc; } ;
struct TYPE_10__ {int relisshared; int relnatts; scalar_t__ relkind; int t_len; struct TYPE_10__* rd_indoption; struct TYPE_10__* rd_indcollation; TYPE_1__* rd_indam; struct TYPE_10__* rd_support; struct TYPE_10__* rd_opcintype; struct TYPE_10__* rd_opfamily; struct TYPE_10__* rd_indextuple; struct TYPE_10__* rd_rel; struct TYPE_10__* rd_options; int rd_att; int rd_isnailed; } ;
struct TYPE_9__ {int amsupport; } ;
typedef int RelationData ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ RelIdCacheEnt ;
typedef int RegProcedure ;
typedef int Oid ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_2__* Form_pg_class ;
typedef int FILE ;


 int ATTRIBUTE_FIXED_PART_SIZE ;
 int AcceptInvalidationMessages () ;
 int * AllocateFile (char*,int ) ;
 int Assert (int) ;
 int CLASS_TUPLE_SIZE ;
 char* DatabasePath ;
 int FATAL ;
 scalar_t__ FreeFile (int *) ;
 int HEAPTUPLESIZE ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 int MyProcPid ;
 int PG_BINARY_W ;
 int RELCACHE_INIT_FILEMAGIC ;
 char* RELCACHE_INIT_FILENAME ;
 scalar_t__ RELKIND_INDEX ;
 int RelCacheInitLock ;
 int RelationGetRelid (TYPE_2__*) ;
 int RelationIdCache ;
 int RelationIdIsInInitFile (int ) ;
 TYPE_2__* TupleDescAttr (int ,int) ;
 int VARSIZE (TYPE_2__*) ;
 int WARNING ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*) ;
 int errmsg (char*,char*) ;
 int fwrite (int*,int,int,int *) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 long relcacheInvalsReceived ;
 scalar_t__ rename (char*,char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int unlink (char*) ;
 int write_item (TYPE_2__*,int,int *) ;

__attribute__((used)) static void
write_relcache_init_file(bool shared)
{
 FILE *fp;
 char tempfilename[MAXPGPATH];
 char finalfilename[MAXPGPATH];
 int magic;
 HASH_SEQ_STATUS status;
 RelIdCacheEnt *idhentry;
 int i;





 if (relcacheInvalsReceived != 0L)
  return;






 if (shared)
 {
  snprintf(tempfilename, sizeof(tempfilename), "global/%s.%d",
     RELCACHE_INIT_FILENAME, MyProcPid);
  snprintf(finalfilename, sizeof(finalfilename), "global/%s",
     RELCACHE_INIT_FILENAME);
 }
 else
 {
  snprintf(tempfilename, sizeof(tempfilename), "%s/%s.%d",
     DatabasePath, RELCACHE_INIT_FILENAME, MyProcPid);
  snprintf(finalfilename, sizeof(finalfilename), "%s/%s",
     DatabasePath, RELCACHE_INIT_FILENAME);
 }

 unlink(tempfilename);

 fp = AllocateFile(tempfilename, PG_BINARY_W);
 if (fp == ((void*)0))
 {




  ereport(WARNING,
    (errcode_for_file_access(),
     errmsg("could not create relation-cache initialization file \"%s\": %m",
      tempfilename),
     errdetail("Continuing anyway, but there's something wrong.")));
  return;
 }





 magic = RELCACHE_INIT_FILEMAGIC;
 if (fwrite(&magic, 1, sizeof(magic), fp) != sizeof(magic))
  elog(FATAL, "could not write init file");




 hash_seq_init(&status, RelationIdCache);

 while ((idhentry = (RelIdCacheEnt *) hash_seq_search(&status)) != ((void*)0))
 {
  Relation rel = idhentry->reldesc;
  Form_pg_class relform = rel->rd_rel;


  if (relform->relisshared != shared)
   continue;
  if (!shared && !RelationIdIsInInitFile(RelationGetRelid(rel)))
  {

   Assert(!rel->rd_isnailed);
   continue;
  }


  write_item(rel, sizeof(RelationData), fp);


  write_item(relform, CLASS_TUPLE_SIZE, fp);


  for (i = 0; i < relform->relnatts; i++)
  {
   write_item(TupleDescAttr(rel->rd_att, i),
        ATTRIBUTE_FIXED_PART_SIZE, fp);
  }


  write_item(rel->rd_options,
       (rel->rd_options ? VARSIZE(rel->rd_options) : 0),
       fp);





  if (rel->rd_rel->relkind == RELKIND_INDEX)
  {


   write_item(rel->rd_indextuple,
        HEAPTUPLESIZE + rel->rd_indextuple->t_len,
        fp);


   write_item(rel->rd_opfamily,
        relform->relnatts * sizeof(Oid),
        fp);


   write_item(rel->rd_opcintype,
        relform->relnatts * sizeof(Oid),
        fp);


   write_item(rel->rd_support,
        relform->relnatts * (rel->rd_indam->amsupport * sizeof(RegProcedure)),
        fp);


   write_item(rel->rd_indcollation,
        relform->relnatts * sizeof(Oid),
        fp);


   write_item(rel->rd_indoption,
        relform->relnatts * sizeof(int16),
        fp);
  }
 }

 if (FreeFile(fp))
  elog(FATAL, "could not write init file");
 LWLockAcquire(RelCacheInitLock, LW_EXCLUSIVE);


 AcceptInvalidationMessages();





 if (relcacheInvalsReceived == 0L)
 {
  if (rename(tempfilename, finalfilename) < 0)
   unlink(tempfilename);
 }
 else
 {

  unlink(tempfilename);
 }

 LWLockRelease(RelCacheInitLock);
}
