
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_5__ {int MftRecordSize; int MFTContext; } ;
typedef TYPE_1__* PNTFS_VOLUME_INFO ;
typedef int PNTFS_RECORD ;
typedef scalar_t__ PNTFS_MFT_RECORD ;
typedef int PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int NtfsFixupRecord (TYPE_1__*,int ) ;
 int NtfsReadAttribute (TYPE_1__*,int ,int,int ,int) ;

__attribute__((used)) static BOOLEAN NtfsReadMftRecord(PNTFS_VOLUME_INFO Volume, ULONGLONG MFTIndex, PNTFS_MFT_RECORD Buffer)
{
    ULONGLONG BytesRead;

    BytesRead = NtfsReadAttribute(Volume, Volume->MFTContext, MFTIndex * Volume->MftRecordSize, (PCHAR)Buffer, Volume->MftRecordSize);
    if (BytesRead != Volume->MftRecordSize)
        return FALSE;


    return NtfsFixupRecord(Volume, (PNTFS_RECORD)Buffer);
}
