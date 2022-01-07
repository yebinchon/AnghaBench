
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * filename; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_5__ {int dumpId; void* formatData; scalar_t__ dataDumper; int desc; } ;
typedef TYPE_2__ TocEntry ;
typedef int ArchiveHandle ;


 int MAXPGPATH ;
 scalar_t__ pg_malloc0 (int) ;
 void* pg_strdup (char*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
_ArchiveEntry(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *tctx;
 char fn[MAXPGPATH];

 tctx = (lclTocEntry *) pg_malloc0(sizeof(lclTocEntry));
 if (strcmp(te->desc, "BLOBS") == 0)
  tctx->filename = pg_strdup("blobs.toc");
 else if (te->dataDumper)
 {
  snprintf(fn, MAXPGPATH, "%d.dat", te->dumpId);
  tctx->filename = pg_strdup(fn);
 }
 else
  tctx->filename = ((void*)0);

 te->formatData = (void *) tctx;
}
