
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; void* lo_buf; int lo_buf_size; int * DeClonePtr; int * ClonePtr; int EndBlobsPtr; int EndBlobPtr; int StartBlobPtr; int StartBlobsPtr; int PrintTocDataPtr; int * ReopenPtr; int ClosePtr; int WriteBufPtr; int WriteBytePtr; int EndDataPtr; int WriteDataPtr; } ;
typedef TYPE_1__ ArchiveHandle ;


 int LOBBUFSIZE ;
 int _CloseArchive ;
 int _EndBlob ;
 int _EndBlobs ;
 int _EndData ;
 int _PrintTocData ;
 int _StartBlob ;
 int _StartBlobs ;
 int _WriteBuf ;
 int _WriteByte ;
 int _WriteData ;
 scalar_t__ archModeRead ;
 int fatal (char*) ;
 scalar_t__ pg_malloc (int ) ;

void
InitArchiveFmt_Null(ArchiveHandle *AH)
{

 AH->WriteDataPtr = _WriteData;
 AH->EndDataPtr = _EndData;
 AH->WriteBytePtr = _WriteByte;
 AH->WriteBufPtr = _WriteBuf;
 AH->ClosePtr = _CloseArchive;
 AH->ReopenPtr = ((void*)0);
 AH->PrintTocDataPtr = _PrintTocData;

 AH->StartBlobsPtr = _StartBlobs;
 AH->StartBlobPtr = _StartBlob;
 AH->EndBlobPtr = _EndBlob;
 AH->EndBlobsPtr = _EndBlobs;
 AH->ClonePtr = ((void*)0);
 AH->DeClonePtr = ((void*)0);


 AH->lo_buf_size = LOBBUFSIZE;
 AH->lo_buf = (void *) pg_malloc(LOBBUFSIZE);




 if (AH->mode == archModeRead)
  fatal("this format cannot be read");
}
