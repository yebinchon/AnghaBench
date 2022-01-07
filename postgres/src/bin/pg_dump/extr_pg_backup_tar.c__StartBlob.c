
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int TH; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_10__ {int blobToc; } ;
typedef TYPE_2__ lclContext ;
struct TYPE_11__ {scalar_t__ formatData; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_12__ {scalar_t__ compression; scalar_t__ formatData; } ;
typedef int Oid ;
typedef TYPE_4__ ArchiveHandle ;


 int fatal (char*,int) ;
 int sprintf (char*,char*,int,char*) ;
 int tarOpen (TYPE_4__*,char*,char) ;
 int tarPrintf (TYPE_4__*,int ,char*,int,char*) ;

__attribute__((used)) static void
_StartBlob(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;
 char fname[255];
 char *sfx;

 if (oid == 0)
  fatal("invalid OID for large object (%u)", oid);

 if (AH->compression != 0)
  sfx = ".gz";
 else
  sfx = "";

 sprintf(fname, "blob_%u.dat%s", oid, sfx);

 tarPrintf(AH, ctx->blobToc, "%u %s\n", oid, fname);

 tctx->TH = tarOpen(AH, fname, 'w');
}
