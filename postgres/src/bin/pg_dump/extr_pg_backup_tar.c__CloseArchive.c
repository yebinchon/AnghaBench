
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int isSpecialScript; int tarFH; int * scriptTH; int * FH; } ;
typedef TYPE_2__ lclContext ;
struct TYPE_16__ {int verbose; TYPE_3__* ropt; int * dopt; } ;
struct TYPE_19__ {scalar_t__ mode; int * FH; scalar_t__ fSpec; scalar_t__ dosync; TYPE_1__ public; int CustomOutPtr; scalar_t__ formatData; } ;
struct TYPE_18__ {int dropSchema; int suppressDumpWarnings; int * superuser; scalar_t__ compression; int * filename; } ;
typedef int TAR_MEMBER ;
typedef TYPE_3__ RestoreOptions ;
typedef int DumpOptions ;
typedef TYPE_4__ ArchiveHandle ;
typedef int Archive ;


 scalar_t__ EOF ;
 TYPE_3__* NewRestoreOptions () ;
 int RestoreArchive (int *) ;
 int SetArchiveOptions (int *,int *,TYPE_3__*) ;
 int WRITE_ERROR_EXIT ;
 int WriteDataChunks (TYPE_4__*,int *) ;
 int WriteHead (TYPE_4__*) ;
 int WriteToc (TYPE_4__*) ;
 int _scriptOut ;
 scalar_t__ archModeWrite ;
 scalar_t__ fputc (int ,int ) ;
 int fsync_fname (scalar_t__,int) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int tarClose (TYPE_4__*,int *) ;
 int * tarOpen (TYPE_4__*,char*,char) ;
 int tarPrintf (TYPE_4__*,int *,char*) ;

__attribute__((used)) static void
_CloseArchive(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 TAR_MEMBER *th;
 RestoreOptions *ropt;
 RestoreOptions *savRopt;
 DumpOptions *savDopt;
 int savVerbose,
    i;

 if (AH->mode == archModeWrite)
 {



  th = tarOpen(AH, "toc.dat", 'w');
  ctx->FH = th;
  WriteHead(AH);
  WriteToc(AH);
  tarClose(AH, th);




  WriteDataChunks(AH, ((void*)0));





  th = tarOpen(AH, "restore.sql", 'w');

  tarPrintf(AH, th, "--\n"
      "-- NOTE:\n"
      "--\n"
      "-- File paths need to be edited. Search for $$PATH$$ and\n"
      "-- replace it with the path to the directory containing\n"
      "-- the extracted data files.\n"
      "--\n");

  AH->CustomOutPtr = _scriptOut;

  ctx->isSpecialScript = 1;
  ctx->scriptTH = th;

  ropt = NewRestoreOptions();
  memcpy(ropt, AH->public.ropt, sizeof(RestoreOptions));
  ropt->filename = ((void*)0);
  ropt->dropSchema = 1;
  ropt->compression = 0;
  ropt->superuser = ((void*)0);
  ropt->suppressDumpWarnings = 1;

  savDopt = AH->public.dopt;
  savRopt = AH->public.ropt;

  SetArchiveOptions((Archive *) AH, ((void*)0), ropt);

  savVerbose = AH->public.verbose;
  AH->public.verbose = 0;

  RestoreArchive((Archive *) AH);

  SetArchiveOptions((Archive *) AH, savDopt, savRopt);

  AH->public.verbose = savVerbose;

  tarClose(AH, th);

  ctx->isSpecialScript = 0;




  for (i = 0; i < 512 * 2; i++)
  {
   if (fputc(0, ctx->tarFH) == EOF)
    WRITE_ERROR_EXIT;
  }


  if (AH->dosync && AH->fSpec)
   (void) fsync_fname(AH->fSpec, 0);
 }

 AH->FH = ((void*)0);
}
