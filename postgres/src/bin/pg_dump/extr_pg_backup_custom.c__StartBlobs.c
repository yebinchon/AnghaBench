
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dataState; int dataPos; } ;
typedef TYPE_1__ lclTocEntry ;
typedef int lclContext ;
struct TYPE_10__ {int dumpId; scalar_t__ formatData; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_11__ {scalar_t__ formatData; } ;
typedef TYPE_3__ ArchiveHandle ;


 int BLK_BLOBS ;
 int K_OFFSET_POS_SET ;
 int WriteInt (TYPE_3__*,int ) ;
 int _WriteByte (TYPE_3__*,int ) ;
 int _getFilePos (TYPE_3__*,int *) ;

__attribute__((used)) static void
_StartBlobs(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;

 tctx->dataPos = _getFilePos(AH, ctx);
 tctx->dataState = K_OFFSET_POS_SET;

 _WriteByte(AH, BLK_BLOBS);
 WriteInt(AH, te->dumpId);
}
