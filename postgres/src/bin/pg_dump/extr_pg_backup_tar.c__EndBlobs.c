
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blobToc; } ;
typedef TYPE_1__ lclContext ;
typedef int TocEntry ;
struct TYPE_6__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int tarClose (TYPE_2__*,int ) ;

__attribute__((used)) static void
_EndBlobs(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;




 tarClose(AH, ctx->blobToc);
}
