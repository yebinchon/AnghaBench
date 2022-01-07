
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filePos; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {int FH; scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int EOF ;
 int READ_ERROR_EXIT (int ) ;
 int getc (int ) ;

__attribute__((used)) static int
_ReadByte(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 int res;

 res = getc(AH->FH);
 if (res == EOF)
  READ_ERROR_EXIT(AH->FH);
 ctx->filePos += 1;
 return res;
}
