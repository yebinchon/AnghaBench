
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {scalar_t__ d_name; } ;
struct TYPE_7__ {int * dataFH; scalar_t__ directory; int * blobsTocFH; } ;
typedef TYPE_1__ lclContext ;
typedef int cfp ;
struct TYPE_8__ {scalar_t__ mode; int format; scalar_t__ fSpec; void* lo_buf; int lo_buf_size; void* formatData; int WorkerJobDumpPtr; int WorkerJobRestorePtr; int DeClonePtr; int ClonePtr; int PrepParallelRestorePtr; int EndBlobsPtr; int EndBlobPtr; int StartBlobPtr; int StartBlobsPtr; int PrintExtraTocPtr; int WriteExtraTocPtr; int ReadExtraTocPtr; int PrintTocDataPtr; int ReopenPtr; int ClosePtr; int ReadBufPtr; int WriteBufPtr; int ReadBytePtr; int WriteBytePtr; int EndDataPtr; int WriteDataPtr; int StartDataPtr; int ArchiveEntryPtr; } ;
typedef int DIR ;
typedef TYPE_2__ ArchiveHandle ;


 int LOBBUFSIZE ;
 int MAXPGPATH ;
 int PG_BINARY_R ;
 int ReadHead (TYPE_2__*) ;
 int ReadToc (TYPE_2__*) ;
 scalar_t__ S_ISDIR (int ) ;
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
 int _WorkerJobDumpDirectory ;
 int _WorkerJobRestoreDirectory ;
 int _WriteBuf ;
 int _WriteByte ;
 int _WriteData ;
 int _WriteExtraToc ;
 int archDirectory ;
 scalar_t__ archModeWrite ;
 int archTar ;
 scalar_t__ cfclose (int *) ;
 int * cfopen_read (char*,int ) ;
 scalar_t__ closedir (int *) ;
 scalar_t__ errno ;
 int fatal (char*,...) ;
 scalar_t__ mkdir (scalar_t__,int) ;
 int * opendir (scalar_t__) ;
 scalar_t__ pg_malloc (int ) ;
 scalar_t__ pg_malloc0 (int) ;
 struct dirent* readdir (int *) ;
 int setFilePath (TYPE_2__*,char*,char*) ;
 scalar_t__ stat (scalar_t__,struct stat*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

void
InitArchiveFmt_Directory(ArchiveHandle *AH)
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

 AH->WorkerJobRestorePtr = _WorkerJobRestoreDirectory;
 AH->WorkerJobDumpPtr = _WorkerJobDumpDirectory;


 ctx = (lclContext *) pg_malloc0(sizeof(lclContext));
 AH->formatData = (void *) ctx;

 ctx->dataFH = ((void*)0);
 ctx->blobsTocFH = ((void*)0);


 AH->lo_buf_size = LOBBUFSIZE;
 AH->lo_buf = (void *) pg_malloc(LOBBUFSIZE);





 if (!AH->fSpec || strcmp(AH->fSpec, "") == 0)
  fatal("no output directory specified");

 ctx->directory = AH->fSpec;

 if (AH->mode == archModeWrite)
 {
  struct stat st;
  bool is_empty = 0;


  if (stat(ctx->directory, &st) == 0 && S_ISDIR(st.st_mode))
  {
   DIR *dir = opendir(ctx->directory);

   if (dir)
   {
    struct dirent *d;

    is_empty = 1;
    while (errno = 0, (d = readdir(dir)))
    {
     if (strcmp(d->d_name, ".") != 0 && strcmp(d->d_name, "..") != 0)
     {
      is_empty = 0;
      break;
     }
    }

    if (errno)
     fatal("could not read directory \"%s\": %m",
        ctx->directory);

    if (closedir(dir))
     fatal("could not close directory \"%s\": %m",
        ctx->directory);
   }
  }

  if (!is_empty && mkdir(ctx->directory, 0700) < 0)
   fatal("could not create directory \"%s\": %m",
      ctx->directory);
 }
 else
 {
  char fname[MAXPGPATH];
  cfp *tocFH;

  setFilePath(AH, fname, "toc.dat");

  tocFH = cfopen_read(fname, PG_BINARY_R);
  if (tocFH == ((void*)0))
   fatal("could not open input file \"%s\": %m", fname);

  ctx->dataFH = tocFH;





  AH->format = archTar;
  ReadHead(AH);
  AH->format = archDirectory;
  ReadToc(AH);


  if (cfclose(tocFH) != 0)
   fatal("could not close TOC file: %m");
  ctx->dataFH = ((void*)0);
 }
}
