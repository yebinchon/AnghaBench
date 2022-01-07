
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* FH; int * tarFH; void* hasSeek; scalar_t__ tarFHpos; scalar_t__ isSpecialScript; scalar_t__ filePos; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_9__ {scalar_t__ mode; scalar_t__ compression; scalar_t__ readHeader; scalar_t__ fSpec; void* lo_buf; int lo_buf_size; void* formatData; int * WorkerJobRestorePtr; int * WorkerJobDumpPtr; int * DeClonePtr; int * ClonePtr; int EndBlobsPtr; int EndBlobPtr; int StartBlobPtr; int StartBlobsPtr; int PrintExtraTocPtr; int WriteExtraTocPtr; int ReadExtraTocPtr; int PrintTocDataPtr; int * ReopenPtr; int ClosePtr; int ReadBufPtr; int WriteBufPtr; int ReadBytePtr; int WriteBytePtr; int EndDataPtr; int WriteDataPtr; int StartDataPtr; int ArchiveEntryPtr; } ;
typedef TYPE_2__ ArchiveHandle ;


 int LOBBUFSIZE ;
 int PG_BINARY_R ;
 int PG_BINARY_W ;
 int ReadHead (TYPE_2__*) ;
 int ReadToc (TYPE_2__*) ;
 int _ArchiveEntry ;
 int _CloseArchive ;
 int _EndBlob ;
 int _EndBlobs ;
 int _EndData ;
 int _PrintExtraToc ;
 int _PrintTocData ;
 int _ReadBuf ;
 int _ReadByte ;
 int _ReadExtraToc ;
 int _StartBlob ;
 int _StartBlobs ;
 int _StartData ;
 int _WriteBuf ;
 int _WriteByte ;
 int _WriteData ;
 int _WriteExtraToc ;
 scalar_t__ archModeWrite ;
 void* checkSeek (int *) ;
 int fatal (char*,...) ;
 void* fopen (scalar_t__,int ) ;
 scalar_t__ pg_malloc (int ) ;
 scalar_t__ pg_malloc0 (int) ;
 int * stdin ;
 int * stdout ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int tarClose (TYPE_2__*,void*) ;
 scalar_t__ tarOpen (TYPE_2__*,char*,char) ;

void
InitArchiveFmt_Tar(ArchiveHandle *AH)
{
 lclContext *ctx;


 AH->ArchiveEntryPtr = _ArchiveEntry;
 AH->StartDataPtr = _StartData;
 AH->WriteDataPtr = _WriteData;
 AH->EndDataPtr = _EndData;
 AH->WriteBytePtr = _WriteByte;
 AH->ReadBytePtr = _ReadByte;
 AH->WriteBufPtr = _WriteBuf;
 AH->ReadBufPtr = _ReadBuf;
 AH->ClosePtr = _CloseArchive;
 AH->ReopenPtr = ((void*)0);
 AH->PrintTocDataPtr = _PrintTocData;
 AH->ReadExtraTocPtr = _ReadExtraToc;
 AH->WriteExtraTocPtr = _WriteExtraToc;
 AH->PrintExtraTocPtr = _PrintExtraToc;

 AH->StartBlobsPtr = _StartBlobs;
 AH->StartBlobPtr = _StartBlob;
 AH->EndBlobPtr = _EndBlob;
 AH->EndBlobsPtr = _EndBlobs;
 AH->ClonePtr = ((void*)0);
 AH->DeClonePtr = ((void*)0);

 AH->WorkerJobDumpPtr = ((void*)0);
 AH->WorkerJobRestorePtr = ((void*)0);




 ctx = (lclContext *) pg_malloc0(sizeof(lclContext));
 AH->formatData = (void *) ctx;
 ctx->filePos = 0;
 ctx->isSpecialScript = 0;


 AH->lo_buf_size = LOBBUFSIZE;
 AH->lo_buf = (void *) pg_malloc(LOBBUFSIZE);




 if (AH->mode == archModeWrite)
 {
  if (AH->fSpec && strcmp(AH->fSpec, "") != 0)
  {
   ctx->tarFH = fopen(AH->fSpec, PG_BINARY_W);
   if (ctx->tarFH == ((void*)0))
    fatal("could not open TOC file \"%s\" for output: %m",
       AH->fSpec);
  }
  else
  {
   ctx->tarFH = stdout;
   if (ctx->tarFH == ((void*)0))
    fatal("could not open TOC file for output: %m");
  }

  ctx->tarFHpos = 0;







  ctx->hasSeek = checkSeek(ctx->tarFH);






  if (AH->compression != 0)
   fatal("compression is not supported by tar archive format");
 }
 else
 {
  if (AH->fSpec && strcmp(AH->fSpec, "") != 0)
  {
   ctx->tarFH = fopen(AH->fSpec, PG_BINARY_R);
   if (ctx->tarFH == ((void*)0))
    fatal("could not open TOC file \"%s\" for input: %m",
       AH->fSpec);
  }
  else
  {
   ctx->tarFH = stdin;
   if (ctx->tarFH == ((void*)0))
    fatal("could not open TOC file for input: %m");
  }







  ctx->tarFHpos = 0;

  ctx->hasSeek = checkSeek(ctx->tarFH);





  AH->readHeader = 0;

  ctx->FH = (void *) tarOpen(AH, "toc.dat", 'r');
  ReadHead(AH);
  ReadToc(AH);
  tarClose(AH, ctx->FH);
 }
}
