
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ pgoff_t ;
struct TYPE_6__ {scalar_t__ dataState; scalar_t__ dataPos; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_7__ {scalar_t__ hasSeek; } ;
typedef TYPE_2__ lclContext ;
struct TYPE_8__ {scalar_t__ dataLength; scalar_t__ formatData; struct TYPE_8__* next; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_9__ {int FH; TYPE_3__* toc; scalar_t__ formatData; } ;
typedef TYPE_4__ ArchiveHandle ;


 scalar_t__ K_OFFSET_POS_SET ;
 int SEEK_END ;
 int fatal (char*) ;
 scalar_t__ fseeko (int ,int ,int ) ;
 scalar_t__ ftello (int ) ;

__attribute__((used)) static void
_PrepParallelRestore(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 TocEntry *prev_te = ((void*)0);
 lclTocEntry *prev_tctx = ((void*)0);
 TocEntry *te;






 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  lclTocEntry *tctx = (lclTocEntry *) te->formatData;






  if (tctx->dataState != K_OFFSET_POS_SET)
   continue;


  if (prev_te)
  {
   if (tctx->dataPos > prev_tctx->dataPos)
    prev_te->dataLength = tctx->dataPos - prev_tctx->dataPos;
  }

  prev_te = te;
  prev_tctx = tctx;
 }


 if (prev_te && ctx->hasSeek)
 {
  pgoff_t endpos;

  if (fseeko(AH->FH, 0, SEEK_END) != 0)
   fatal("error during file seek: %m");
  endpos = ftello(AH->FH);
  if (endpos > prev_tctx->dataPos)
   prev_te->dataLength = endpos - prev_tctx->dataPos;
 }
}
