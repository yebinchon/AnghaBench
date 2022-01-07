
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * TH; int * filename; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_7__ {int dumpId; void* formatData; int * dataDumper; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_8__ {scalar_t__ compression; } ;
typedef TYPE_3__ ArchiveHandle ;


 int K_STD_BUF_SIZE ;
 scalar_t__ pg_malloc0 (int) ;
 int * pg_strdup (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
_ArchiveEntry(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *ctx;
 char fn[K_STD_BUF_SIZE];

 ctx = (lclTocEntry *) pg_malloc0(sizeof(lclTocEntry));
 if (te->dataDumper != ((void*)0))
 {






  sprintf(fn, "%d.dat", te->dumpId);

  ctx->filename = pg_strdup(fn);
 }
 else
 {
  ctx->filename = ((void*)0);
  ctx->TH = ((void*)0);
 }
 te->formatData = (void *) ctx;
}
