
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int directory; int pstate; int * dataFH; } ;
typedef TYPE_1__ lclContext ;
typedef int cfp ;
struct TYPE_11__ {scalar_t__ mode; int * FH; scalar_t__ dosync; int format; scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int MAXPGPATH ;
 int PG_BINARY_W ;
 int ParallelBackupEnd (TYPE_2__*,int ) ;
 int ParallelBackupStart (TYPE_2__*) ;
 int WriteDataChunks (TYPE_2__*,int ) ;
 int WriteHead (TYPE_2__*) ;
 int WriteToc (TYPE_2__*) ;
 int archDirectory ;
 scalar_t__ archModeWrite ;
 int archTar ;
 scalar_t__ cfclose (int *) ;
 int * cfopen_write (char*,int ,int ) ;
 int fatal (char*,...) ;
 int fsync_dir_recurse (int ) ;
 int setFilePath (TYPE_2__*,char*,char*) ;

__attribute__((used)) static void
_CloseArchive(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 if (AH->mode == archModeWrite)
 {
  cfp *tocFH;
  char fname[MAXPGPATH];

  setFilePath(AH, fname, "toc.dat");


  ctx->pstate = ParallelBackupStart(AH);


  tocFH = cfopen_write(fname, PG_BINARY_W, 0);
  if (tocFH == ((void*)0))
   fatal("could not open output file \"%s\": %m", fname);
  ctx->dataFH = tocFH;






  AH->format = archTar;
  WriteHead(AH);
  AH->format = archDirectory;
  WriteToc(AH);
  if (cfclose(tocFH) != 0)
   fatal("could not close TOC file: %m");
  WriteDataChunks(AH, ctx->pstate);

  ParallelBackupEnd(AH, ctx->pstate);





  if (AH->dosync)
   fsync_dir_recurse(ctx->directory);
 }
 AH->FH = ((void*)0);
}
