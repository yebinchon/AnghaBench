
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * FH; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_8__ {scalar_t__ formatData; } ;
typedef int TAR_MEMBER ;
typedef TYPE_2__ ArchiveHandle ;


 int ahwrite (char*,int,size_t,TYPE_2__*) ;
 int tarClose (TYPE_2__*,int *) ;
 int * tarOpen (TYPE_2__*,char*,char) ;
 size_t tarRead (char*,int,int *) ;

__attribute__((used)) static void
_PrintFileData(ArchiveHandle *AH, char *filename)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char buf[4096];
 size_t cnt;
 TAR_MEMBER *th;

 if (!filename)
  return;

 th = tarOpen(AH, filename, 'r');
 ctx->FH = th;

 while ((cnt = tarRead(buf, 4095, th)) > 0)
 {
  buf[cnt] = '\0';
  ahwrite(buf, 1, cnt, AH);
 }

 tarClose(AH, th);
}
