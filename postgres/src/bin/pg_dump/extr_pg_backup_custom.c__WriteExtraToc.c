
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dataState; int dataPos; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ TocEntry ;
typedef int ArchiveHandle ;


 int WriteOffset (int *,int ,int ) ;

__attribute__((used)) static void
_WriteExtraToc(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *ctx = (lclTocEntry *) te->formatData;

 WriteOffset(AH, ctx->dataPos, ctx->dataState);
}
