
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* directory; int * dataFH; } ;
typedef TYPE_1__ lclContext ;
typedef int TocEntry ;
struct TYPE_5__ {int compression; scalar_t__ formatData; } ;
typedef int Oid ;
typedef TYPE_2__ ArchiveHandle ;


 int MAXPGPATH ;
 int PG_BINARY_W ;
 int * cfopen_write (char*,int ,int ) ;
 int fatal (char*,char*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static void
_StartBlob(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char fname[MAXPGPATH];

 snprintf(fname, MAXPGPATH, "%s/blob_%u.dat", ctx->directory, oid);

 ctx->dataFH = cfopen_write(fname, PG_BINARY_W, AH->compression);

 if (ctx->dataFH == ((void*)0))
  fatal("could not open output file \"%s\": %m", fname);
}
