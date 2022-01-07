
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int dataState; int dataPos; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_12__ {int cs; } ;
typedef TYPE_2__ lclContext ;
struct TYPE_13__ {int dumpId; scalar_t__ formatData; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_14__ {int compression; scalar_t__ formatData; } ;
typedef TYPE_4__ ArchiveHandle ;


 int AllocateCompressor (int ,int ) ;
 int BLK_DATA ;
 int K_OFFSET_POS_SET ;
 int WriteInt (TYPE_4__*,int ) ;
 int _CustomWriteFunc ;
 int _WriteByte (TYPE_4__*,int ) ;
 int _getFilePos (TYPE_4__*,TYPE_2__*) ;

__attribute__((used)) static void
_StartData(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;

 tctx->dataPos = _getFilePos(AH, ctx);
 tctx->dataState = K_OFFSET_POS_SET;

 _WriteByte(AH, BLK_DATA);
 WriteInt(AH, te->dumpId);

 ctx->cs = AllocateCompressor(AH->compression, _CustomWriteFunc);
}
