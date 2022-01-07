
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {TYPE_4__* FH; } ;
typedef TYPE_3__ lclContext ;
struct TYPE_18__ {TYPE_1__* ropt; } ;
struct TYPE_21__ {TYPE_2__ public; scalar_t__ formatData; } ;
struct TYPE_20__ {int * targetFile; } ;
struct TYPE_17__ {int dropSchema; } ;
typedef TYPE_4__ TAR_MEMBER ;
typedef scalar_t__ Oid ;
typedef TYPE_5__ ArchiveHandle ;


 int EndRestoreBlob (TYPE_5__*,scalar_t__) ;
 int EndRestoreBlobs (TYPE_5__*) ;
 int StartRestoreBlob (TYPE_5__*,scalar_t__,int ) ;
 int StartRestoreBlobs (TYPE_5__*) ;
 int ahwrite (char*,int,size_t,TYPE_5__*) ;
 scalar_t__ atooid (int *) ;
 int pg_log_info (char*,scalar_t__) ;
 scalar_t__ strncmp (int *,char*,int) ;
 int tarClose (TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* tarOpen (TYPE_5__*,int *,char) ;
 size_t tarRead (char*,int,TYPE_4__*) ;

__attribute__((used)) static void
_LoadBlobs(ArchiveHandle *AH)
{
 Oid oid;
 lclContext *ctx = (lclContext *) AH->formatData;
 TAR_MEMBER *th;
 size_t cnt;
 bool foundBlob = 0;
 char buf[4096];

 StartRestoreBlobs(AH);

 th = tarOpen(AH, ((void*)0), 'r');
 while (th != ((void*)0))
 {
  ctx->FH = th;

  if (strncmp(th->targetFile, "blob_", 5) == 0)
  {
   oid = atooid(&th->targetFile[5]);
   if (oid != 0)
   {
    pg_log_info("restoring large object with OID %u", oid);

    StartRestoreBlob(AH, oid, AH->public.ropt->dropSchema);

    while ((cnt = tarRead(buf, 4095, th)) > 0)
    {
     buf[cnt] = '\0';
     ahwrite(buf, 1, cnt, AH);
    }
    EndRestoreBlob(AH, oid);
    foundBlob = 1;
   }
   tarClose(AH, th);
  }
  else
  {
   tarClose(AH, th);







   if (foundBlob)
    break;
  }

  th = tarOpen(AH, ((void*)0), 'r');
 }
 EndRestoreBlobs(AH);
}
