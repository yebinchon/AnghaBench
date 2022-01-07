
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dataStart; void* hasSeek; scalar_t__ filePos; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_9__ {scalar_t__ mode; void* FH; scalar_t__ fSpec; void* lo_buf; int lo_buf_size; void* formatData; int WorkerJobRestorePtr; int * WorkerJobDumpPtr; int DeClonePtr; int ClonePtr; int PrepParallelRestorePtr; int EndBlobsPtr; int EndBlobPtr; int StartBlobPtr; int StartBlobsPtr; int PrintExtraTocPtr; int WriteExtraTocPtr; int ReadExtraTocPtr; int PrintTocDataPtr; int ReopenPtr; int ClosePtr; int ReadBufPtr; int WriteBufPtr; int ReadBytePtr; int WriteBytePtr; int EndDataPtr; int WriteDataPtr; int StartDataPtr; int ArchiveEntryPtr; } ;
typedef TYPE_2__ ArchiveHandle ;


 int LOBBUFSIZE ;
 int PG_BINARY_R ;
 int PG_BINARY_W ;
 int ReadHead (TYPE_2__*) ;
 int ReadToc (TYPE_2__*) ;
 int _ArchiveEntry ;
 int _Clone ;
 int _CloseArchive ;
 int _DeClone ;
 int _EndBlob ;
 int _EndBlobs ;
 int _EndData ;
 int _PrepParallelRestore ;
 int _PrintExtraToc ;
 int _PrintTocData ;
 int _ReadBuf ;
 int _ReadByte ;
 int _ReadExtraToc ;
 int _ReopenArchive ;
 int _StartBlob ;
 int _StartBlobs ;
 int _StartData ;
 int _WorkerJobRestoreCustom ;
 int _WriteBuf ;
 int _WriteByte ;
 int _WriteData ;
 int _WriteExtraToc ;
 int _getFilePos (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ archModeWrite ;
 void* checkSeek (void*) ;
 int fatal (char*,...) ;
 void* fopen (scalar_t__,int ) ;
 scalar_t__ pg_malloc (int ) ;
 scalar_t__ pg_malloc0 (int) ;
 void* stdin ;
 void* stdout ;
 scalar_t__ strcmp (scalar_t__,char*) ;

void
InitArchiveFmt_Custom(ArchiveHandle *AH)
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
 AH->ReopenPtr = _ReopenArchive;
 AH->PrintTocDataPtr = _PrintTocData;
 AH->ReadExtraTocPtr = _ReadExtraToc;
 AH->WriteExtraTocPtr = _WriteExtraToc;
 AH->PrintExtraTocPtr = _PrintExtraToc;

 AH->StartBlobsPtr = _StartBlobs;
 AH->StartBlobPtr = _StartBlob;
 AH->EndBlobPtr = _EndBlob;
 AH->EndBlobsPtr = _EndBlobs;

 AH->PrepParallelRestorePtr = _PrepParallelRestore;
 AH->ClonePtr = _Clone;
 AH->DeClonePtr = _DeClone;


 AH->WorkerJobDumpPtr = ((void*)0);
 AH->WorkerJobRestorePtr = _WorkerJobRestoreCustom;


 ctx = (lclContext *) pg_malloc0(sizeof(lclContext));
 AH->formatData = (void *) ctx;


 AH->lo_buf_size = LOBBUFSIZE;
 AH->lo_buf = (void *) pg_malloc(LOBBUFSIZE);

 ctx->filePos = 0;




 if (AH->mode == archModeWrite)
 {
  if (AH->fSpec && strcmp(AH->fSpec, "") != 0)
  {
   AH->FH = fopen(AH->fSpec, PG_BINARY_W);
   if (!AH->FH)
    fatal("could not open output file \"%s\": %m", AH->fSpec);
  }
  else
  {
   AH->FH = stdout;
   if (!AH->FH)
    fatal("could not open output file: %m");
  }

  ctx->hasSeek = checkSeek(AH->FH);
 }
 else
 {
  if (AH->fSpec && strcmp(AH->fSpec, "") != 0)
  {
   AH->FH = fopen(AH->fSpec, PG_BINARY_R);
   if (!AH->FH)
    fatal("could not open input file \"%s\": %m", AH->fSpec);
  }
  else
  {
   AH->FH = stdin;
   if (!AH->FH)
    fatal("could not open input file: %m");
  }

  ctx->hasSeek = checkSeek(AH->FH);

  ReadHead(AH);
  ReadToc(AH);
  ctx->dataStart = _getFilePos(AH, ctx);
 }

}
