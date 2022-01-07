
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int blobsTocFH; int * dataFH; } ;
typedef TYPE_1__ lclContext ;
typedef int buf ;
typedef int TocEntry ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef int Oid ;
typedef TYPE_2__ ArchiveHandle ;


 int cfclose (int *) ;
 int cfwrite (char*,int,int ) ;
 int fatal (char*) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static void
_EndBlob(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char buf[50];
 int len;


 cfclose(ctx->dataFH);
 ctx->dataFH = ((void*)0);


 len = snprintf(buf, sizeof(buf), "%u blob_%u.dat\n", oid, oid);
 if (cfwrite(buf, len, ctx->blobsTocFH) != len)
  fatal("could not write to blobs TOC file");
}
