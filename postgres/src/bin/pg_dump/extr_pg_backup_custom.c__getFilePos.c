
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pgoff_t ;
struct TYPE_5__ {scalar_t__ filePos; scalar_t__ hasSeek; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_6__ {int FH; } ;
typedef TYPE_2__ ArchiveHandle ;


 int fatal (char*) ;
 scalar_t__ ftello (int ) ;
 int pg_log_warning (char*) ;

__attribute__((used)) static pgoff_t
_getFilePos(ArchiveHandle *AH, lclContext *ctx)
{
 pgoff_t pos;

 if (ctx->hasSeek)
 {







  pos = ftello(AH->FH);
  if (pos < 0)
   fatal("could not determine seek position in archive file: %m");

  if (pos != ctx->filePos)
   pg_log_warning("ftell mismatch with expected position -- ftell used");
 }
 else
  pos = ctx->filePos;
 return pos;
}
