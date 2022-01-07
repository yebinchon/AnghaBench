
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pgoff_t ;
struct TYPE_9__ {scalar_t__ hasSeek; int dataStart; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_10__ {scalar_t__ mode; int * FH; scalar_t__ fSpec; scalar_t__ dosync; scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int SEEK_SET ;
 int WriteDataChunks (TYPE_2__*,int *) ;
 int WriteHead (TYPE_2__*) ;
 int WriteToc (TYPE_2__*) ;
 int _getFilePos (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ archModeWrite ;
 int fatal (char*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fseeko (int *,int ,int ) ;
 int fsync_fname (scalar_t__,int) ;
 int ftello (int *) ;

__attribute__((used)) static void
_CloseArchive(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 pgoff_t tpos;

 if (AH->mode == archModeWrite)
 {
  WriteHead(AH);

  tpos = ftello(AH->FH);
  if (tpos < 0 && ctx->hasSeek)
   fatal("could not determine seek position in archive file: %m");
  WriteToc(AH);
  ctx->dataStart = _getFilePos(AH, ctx);
  WriteDataChunks(AH, ((void*)0));







  if (ctx->hasSeek &&
   fseeko(AH->FH, tpos, SEEK_SET) == 0)
   WriteToc(AH);
 }

 if (fclose(AH->FH) != 0)
  fatal("could not close archive file: %m");


 if (AH->dosync && AH->mode == archModeWrite && AH->fSpec)
  (void) fsync_fname(AH->fSpec, 0);

 AH->FH = ((void*)0);
}
