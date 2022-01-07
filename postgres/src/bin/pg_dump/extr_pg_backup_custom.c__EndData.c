
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cs; } ;
typedef TYPE_1__ lclContext ;
typedef int TocEntry ;
struct TYPE_7__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int EndCompressor (TYPE_2__*,int ) ;
 int WriteInt (TYPE_2__*,int ) ;

__attribute__((used)) static void
_EndData(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 EndCompressor(AH, ctx->cs);

 WriteInt(AH, 0);
}
