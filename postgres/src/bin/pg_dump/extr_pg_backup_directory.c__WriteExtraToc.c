
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* filename; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ TocEntry ;
typedef int ArchiveHandle ;


 int WriteStr (int *,char*) ;

__attribute__((used)) static void
_WriteExtraToc(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;





 if (tctx->filename)
  WriteStr(AH, tctx->filename);
 else
  WriteStr(AH, "");
}
