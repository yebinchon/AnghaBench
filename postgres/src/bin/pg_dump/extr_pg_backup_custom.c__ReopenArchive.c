
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pgoff_t ;
struct TYPE_4__ {int hasSeek; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ mode; int FH; int * fSpec; scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int PG_BINARY_R ;
 int SEEK_SET ;
 scalar_t__ archModeWrite ;
 int fatal (char*,...) ;
 scalar_t__ fclose (int ) ;
 int fopen (int *,int ) ;
 scalar_t__ fseeko (int ,scalar_t__,int ) ;
 scalar_t__ ftello (int ) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static void
_ReopenArchive(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 pgoff_t tpos;

 if (AH->mode == archModeWrite)
  fatal("can only reopen input archives");





 if (AH->fSpec == ((void*)0) || strcmp(AH->fSpec, "") == 0)
  fatal("parallel restore from standard input is not supported");
 if (!ctx->hasSeek)
  fatal("parallel restore from non-seekable file is not supported");

 tpos = ftello(AH->FH);
 if (tpos < 0)
  fatal("could not determine seek position in archive file: %m");


 if (fclose(AH->FH) != 0)
  fatal("could not close archive file: %m");


 AH->FH = fopen(AH->fSpec, PG_BINARY_R);
 if (!AH->FH)
  fatal("could not open input file \"%s\": %m", AH->fSpec);

 if (fseeko(AH->FH, tpos, SEEK_SET) != 0)
  fatal("could not set seek position in archive file: %m");
}
