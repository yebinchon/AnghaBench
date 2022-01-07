
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * blobsTocFH; } ;
typedef TYPE_1__ lclContext ;
typedef int TocEntry ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int cfclose (int *) ;

__attribute__((used)) static void
_EndBlobs(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 cfclose(ctx->blobsTocFH);
 ctx->blobsTocFH = ((void*)0);
}
