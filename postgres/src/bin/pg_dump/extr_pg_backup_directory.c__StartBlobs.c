
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * blobsTocFH; } ;
typedef TYPE_1__ lclContext ;
typedef int TocEntry ;
struct TYPE_6__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int MAXPGPATH ;
 int * cfopen_write (char*,char*,int ) ;
 int fatal (char*,char*) ;
 int setFilePath (TYPE_2__*,char*,char*) ;

__attribute__((used)) static void
_StartBlobs(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char fname[MAXPGPATH];

 setFilePath(AH, fname, "blobs.toc");


 ctx->blobsTocFH = cfopen_write(fname, "ab", 0);
 if (ctx->blobsTocFH == ((void*)0))
  fatal("could not open output file \"%s\": %m", fname);
}
