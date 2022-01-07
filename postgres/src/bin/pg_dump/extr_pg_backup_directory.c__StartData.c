
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int filename; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_9__ {int * dataFH; } ;
typedef TYPE_2__ lclContext ;
struct TYPE_10__ {scalar_t__ formatData; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_11__ {int compression; scalar_t__ formatData; } ;
typedef TYPE_4__ ArchiveHandle ;


 int MAXPGPATH ;
 int PG_BINARY_W ;
 int * cfopen_write (char*,int ,int ) ;
 int fatal (char*,char*) ;
 int setFilePath (TYPE_4__*,char*,int ) ;

__attribute__((used)) static void
_StartData(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;
 lclContext *ctx = (lclContext *) AH->formatData;
 char fname[MAXPGPATH];

 setFilePath(AH, fname, tctx->filename);

 ctx->dataFH = cfopen_write(fname, PG_BINARY_W, AH->compression);
 if (ctx->dataFH == ((void*)0))
  fatal("could not open output file \"%s\": %m", fname);
}
