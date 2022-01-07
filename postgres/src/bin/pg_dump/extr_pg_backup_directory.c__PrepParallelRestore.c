
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_6__ {int * filename; } ;
typedef TYPE_1__ lclTocEntry ;
typedef int fname ;
struct TYPE_7__ {int reqs; int dataLength; int desc; scalar_t__ formatData; struct TYPE_7__* next; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_8__ {TYPE_2__* toc; } ;
typedef TYPE_3__ ArchiveHandle ;


 int MAXPGPATH ;
 int REQ_DATA ;
 int setFilePath (TYPE_3__*,char*,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
_PrepParallelRestore(ArchiveHandle *AH)
{
 TocEntry *te;

 for (te = AH->toc->next; te != AH->toc; te = te->next)
 {
  lclTocEntry *tctx = (lclTocEntry *) te->formatData;
  char fname[MAXPGPATH];
  struct stat st;





  if (tctx->filename == ((void*)0))
   continue;


  if ((te->reqs & REQ_DATA) == 0)
   continue;







  setFilePath(AH, fname, tctx->filename);

  if (stat(fname, &st) == 0)
   te->dataLength = st.st_size;
  else
  {

   strlcat(fname, ".gz", sizeof(fname));
   if (stat(fname, &st) == 0)
    te->dataLength = st.st_size;
  }
  if (strcmp(te->desc, "BLOBS") == 0)
   te->dataLength *= 1024;
 }
}
