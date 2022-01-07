
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ dataState; int dataPos; } ;
typedef TYPE_3__ lclTocEntry ;
struct TYPE_17__ {int hasSeek; } ;
typedef TYPE_4__ lclContext ;
struct TYPE_18__ {int dumpId; scalar_t__ formatData; } ;
typedef TYPE_5__ TocEntry ;
struct TYPE_15__ {TYPE_1__* ropt; } ;
struct TYPE_19__ {TYPE_2__ public; int FH; scalar_t__ formatData; } ;
struct TYPE_14__ {int dropSchema; } ;
typedef TYPE_6__ ArchiveHandle ;




 int EOF ;
 scalar_t__ K_OFFSET_NO_DATA ;
 scalar_t__ K_OFFSET_POS_NOT_SET ;
 int SEEK_SET ;
 int _LoadBlobs (TYPE_6__*,int ) ;
 int _PrintData (TYPE_6__*) ;
 int _readBlockHeader (TYPE_6__*,int*,int*) ;
 int _skipBlobs (TYPE_6__*) ;
 int _skipData (TYPE_6__*) ;
 int fatal (char*,...) ;
 scalar_t__ fseeko (int ,int ,int ) ;

__attribute__((used)) static void
_PrintTocData(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;
 int blkType;
 int id;

 if (tctx->dataState == K_OFFSET_NO_DATA)
  return;

 if (!ctx->hasSeek || tctx->dataState == K_OFFSET_POS_NOT_SET)
 {





  _readBlockHeader(AH, &blkType, &id);

  while (blkType != EOF && id != te->dumpId)
  {
   switch (blkType)
   {
    case 128:
     _skipData(AH);
     break;

    case 129:
     _skipBlobs(AH);
     break;

    default:
     fatal("unrecognized data block type (%d) while searching archive",
        blkType);
     break;
   }
   _readBlockHeader(AH, &blkType, &id);
  }
 }
 else
 {

  if (fseeko(AH->FH, tctx->dataPos, SEEK_SET) != 0)
   fatal("error during file seek: %m");

  _readBlockHeader(AH, &blkType, &id);
 }


 if (blkType == EOF)
 {
  if (tctx->dataState == K_OFFSET_POS_NOT_SET)
   fatal("could not find block ID %d in archive -- "
      "possibly due to out-of-order restore request, "
      "which cannot be handled due to lack of data offsets in archive",
      te->dumpId);
  else if (!ctx->hasSeek)
   fatal("could not find block ID %d in archive -- "
      "possibly due to out-of-order restore request, "
      "which cannot be handled due to non-seekable input file",
      te->dumpId);
  else
   fatal("could not find block ID %d in archive -- "
      "possibly corrupt archive",
      te->dumpId);
 }


 if (id != te->dumpId)
  fatal("found unexpected block ID (%d) when reading data -- expected %d",
     id, te->dumpId);

 switch (blkType)
 {
  case 128:
   _PrintData(AH);
   break;

  case 129:
   _LoadBlobs(AH, AH->public.ropt->dropSchema);
   break;

  default:
   fatal("unrecognized data block type %d while restoring archive",
      blkType);
   break;
 }
}
