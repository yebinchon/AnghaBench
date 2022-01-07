
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int desc; int dataDumperArg; int (* dataDumper ) (int *,int ) ;} ;
typedef TYPE_1__ TocEntry ;
struct TYPE_10__ {TYPE_1__* currToc; } ;
typedef TYPE_2__ ArchiveHandle ;
typedef int Archive ;


 int _EndBlobs (TYPE_2__*,TYPE_1__*) ;
 int _StartBlobs (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void
_PrintTocData(ArchiveHandle *AH, TocEntry *te)
{
 if (te->dataDumper)
 {
  AH->currToc = te;

  if (strcmp(te->desc, "BLOBS") == 0)
   _StartBlobs(AH, te);

  te->dataDumper((Archive *) AH, te->dataDumperArg);

  if (strcmp(te->desc, "BLOBS") == 0)
   _EndBlobs(AH, te);

  AH->currToc = ((void*)0);
 }
}
