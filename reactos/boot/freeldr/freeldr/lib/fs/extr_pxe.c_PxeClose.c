
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_PXENV_TFTP_CLOSE ;
typedef int closeData ;
typedef scalar_t__ ULONG ;
typedef int ARC_STATUS ;


 int CallPxe (int ,int *) ;
 int EBADF ;
 int EIO ;
 int ESUCCESS ;
 int FrLdrTempFree (int *,int ) ;
 scalar_t__ NO_FILE ;
 int PXENV_TFTP_CLOSE ;
 int RtlZeroMemory (int *,int) ;
 int TAG_PXE_FILE ;
 int * _CachedFile ;
 scalar_t__ _OpenFile ;

__attribute__((used)) static ARC_STATUS PxeClose(ULONG FileId)
{
    t_PXENV_TFTP_CLOSE closeData;

    if (_OpenFile == NO_FILE || FileId != _OpenFile)
        return EBADF;

    RtlZeroMemory(&closeData, sizeof(closeData));
    if (!CallPxe(PXENV_TFTP_CLOSE, &closeData))
        return EIO;

    _OpenFile = NO_FILE;
    if (_CachedFile)
    {
        FrLdrTempFree(_CachedFile, TAG_PXE_FILE);
        _CachedFile = ((void*)0);
    }
    return ESUCCESS;
}
