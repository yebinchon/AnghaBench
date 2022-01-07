
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * filename; } ;
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
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;

 if (tctx == ((void*)0))
 {
  tctx = (lclTocEntry *) pg_malloc0(sizeof(lclTocEntry));
  te->formatData = (void *) tctx;
 }

 tctx->filename = ReadStr(AH);
 if (strlen(tctx->filename) == 0)
 {
  free(tctx->filename);
  tctx->filename = ((void*)0);
 }
}
