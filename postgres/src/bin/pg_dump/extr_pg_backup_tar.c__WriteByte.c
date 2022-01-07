
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filePos; int FH; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int WRITE_ERROR_EXIT ;
 int tarWrite (char*,int,int ) ;

__attribute__((used)) static int
_WriteByte(ArchiveHandle *AH, const int i)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char b = i;

 if (tarWrite(&b, 1, ctx->FH) != 1)
  WRITE_ERROR_EXIT;

 ctx->filePos += 1;
 return 1;
}
