
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * TH; int * filename; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_5__ {void* formatData; } ;
typedef TYPE_2__ TocEntry ;
typedef int ArchiveHandle ;


 int * ReadStr (int *) ;
 int free (int *) ;
 scalar_t__ pg_malloc0 (int) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static void
_ReadExtraToc(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *ctx = (lclTocEntry *) te->formatData;

 if (ctx == ((void*)0))
 {
  ctx = (lclTocEntry *) pg_malloc0(sizeof(lclTocEntry));
  te->formatData = (void *) ctx;
 }

 ctx->filename = ReadStr(AH);
 if (strlen(ctx->filename) == 0)
 {
  free(ctx->filename);
  ctx->filename = ((void*)0);
 }
 ctx->TH = ((void*)0);
}
