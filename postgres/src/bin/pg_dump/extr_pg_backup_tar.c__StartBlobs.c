
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


 int K_STD_BUF_SIZE ;
 int sprintf (char*,char*) ;
 int tarOpen (TYPE_2__*,char*,char) ;

__attribute__((used)) static void
_StartBlobs(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char fname[K_STD_BUF_SIZE];

 sprintf(fname, "blobs.toc");
 ctx->blobToc = tarOpen(AH, fname, 'w');
}
