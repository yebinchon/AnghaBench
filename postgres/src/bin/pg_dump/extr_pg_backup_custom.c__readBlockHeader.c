
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filePos; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_6__ {scalar_t__ version; int FH; scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int BLK_DATA ;
 int EOF ;
 scalar_t__ K_VERS_1_3 ;
 int ReadInt (TYPE_2__*) ;
 int getc (int ) ;

__attribute__((used)) static void
_readBlockHeader(ArchiveHandle *AH, int *type, int *id)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 int byt;
 if (AH->version < K_VERS_1_3)
  *type = BLK_DATA;
 else
 {
  byt = getc(AH->FH);
  *type = byt;
  if (byt == EOF)
  {
   *id = 0;
   return;
  }
  ctx->filePos += 1;
 }

 *id = ReadInt(AH);
}
