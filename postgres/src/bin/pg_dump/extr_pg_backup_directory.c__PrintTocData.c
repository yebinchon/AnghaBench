
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_5__ {int desc; scalar_t__ formatData; } ;
typedef TYPE_2__ TocEntry ;
typedef int ArchiveHandle ;


 int MAXPGPATH ;
 int _LoadBlobs (int *) ;
 int _PrintFileData (int *,char*) ;
 int setFilePath (int *,char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
_PrintTocData(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;

 if (!tctx->filename)
  return;

 if (strcmp(te->desc, "BLOBS") == 0)
  _LoadBlobs(AH);
 else
 {
  char fname[MAXPGPATH];

  setFilePath(AH, fname, tctx->filename);
  _PrintFileData(AH, fname);
 }
}
