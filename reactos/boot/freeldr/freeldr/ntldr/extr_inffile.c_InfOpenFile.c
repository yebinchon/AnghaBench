
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {scalar_t__ HighPart; int LowPart; } ;
struct TYPE_5__ {TYPE_1__ EndingAddress; } ;
typedef int* PULONG ;
typedef int PSTR ;
typedef scalar_t__* PINFCACHE ;
typedef int ** PHINF ;
typedef scalar_t__ PCSTR ;
typedef scalar_t__* PCHAR ;
typedef int INFCACHE ;
typedef int * HINF ;
typedef TYPE_2__ FILEINFORMATION ;
typedef int BOOLEAN ;
typedef scalar_t__ ARC_STATUS ;


 int ArcClose (int) ;
 scalar_t__ ArcGetFileInformation (int,TYPE_2__*) ;
 scalar_t__ ArcOpen (int ,int ,int*) ;
 scalar_t__ ArcRead (int,scalar_t__*,int,int*) ;
 scalar_t__ ESUCCESS ;
 int FALSE ;
 scalar_t__* FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (scalar_t__*,int ) ;
 int InfpParseBuffer (scalar_t__*,scalar_t__*,scalar_t__*,int*) ;
 int OpenReadOnly ;
 int RtlZeroMemory (scalar_t__*,int) ;
 int TAG_INF_CACHE ;
 int TAG_INF_FILE ;

BOOLEAN
InfOpenFile(
    PHINF InfHandle,
    PCSTR FileName,
    PULONG ErrorLine)
{
    FILEINFORMATION Information;
    ULONG FileId;
    PCHAR FileBuffer;
    ULONG FileSize, Count;
    PINFCACHE Cache;
    BOOLEAN Success;
    ARC_STATUS Status;

    *InfHandle = ((void*)0);
    *ErrorLine = (ULONG) - 1;




    Status = ArcOpen((PSTR)FileName, OpenReadOnly, &FileId);
    if (Status != ESUCCESS)
    {
        return FALSE;
    }




    Status = ArcGetFileInformation(FileId, &Information);
    if ((Status != ESUCCESS) || (Information.EndingAddress.HighPart != 0))
    {
        ArcClose(FileId);
        return FALSE;
    }
    FileSize = Information.EndingAddress.LowPart;




    FileBuffer = FrLdrTempAlloc(FileSize + 1, TAG_INF_FILE);
    if (!FileBuffer)
    {
        ArcClose(FileId);
        return FALSE;
    }




    Status = ArcRead(FileId, FileBuffer, FileSize, &Count);
    if ((Status != ESUCCESS) || (Count != FileSize))
    {
        ArcClose(FileId);
        FrLdrTempFree(FileBuffer, TAG_INF_FILE);
        return FALSE;
    }




    ArcClose(FileId);




    FileBuffer[FileSize] = 0;




    Cache = (PINFCACHE)FrLdrTempAlloc(sizeof(INFCACHE), TAG_INF_CACHE);
    if (!Cache)
    {
        FrLdrTempFree(FileBuffer, TAG_INF_FILE);
        return FALSE;
    }




    RtlZeroMemory(Cache, sizeof(INFCACHE));




    Success = InfpParseBuffer(Cache,
                              FileBuffer,
                              FileBuffer + FileSize,
                              ErrorLine);
    if (!Success)
    {
        FrLdrTempFree(Cache, TAG_INF_CACHE);
        Cache = ((void*)0);
    }




    FrLdrTempFree(FileBuffer, TAG_INF_FILE);




    *InfHandle = (HINF)Cache;

    return Success;
}
