
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int szDrive ;
typedef int VOID ;
struct TYPE_5__ {scalar_t__ Count; TYPE_1__* Pagefile; int szPagingFiles; } ;
struct TYPE_4__ {int * pszVolume; int szDrive; int bUsed; scalar_t__ NewMaxSize; scalar_t__ NewMinSize; scalar_t__ OldMaxSize; scalar_t__ OldMinSize; } ;
typedef int TCHAR ;
typedef TYPE_2__* PVIRTMEM ;
typedef int * LPTSTR ;
typedef scalar_t__ INT ;


 scalar_t__ DRIVE_FIXED ;
 scalar_t__ GetDriveType (int *) ;
 scalar_t__ GetLogicalDriveStrings (int,int *) ;
 int GetPageFileSizes (int ,scalar_t__*,scalar_t__*) ;
 int GetProcessHeap () ;
 scalar_t__ GetVolumeInformation (int *,int *,int,int *,int *,int *,int *,int ) ;
 int * HeapAlloc (int ,int ,int) ;
 int MAX_PATH ;
 int TRUE ;
 int _tcscpy (int *,int *) ;
 int _tcslen (int *) ;
 int _tcsncmp (int ,int *,int) ;
 int * _tcsupr (int *) ;
 int lstrcpy (int ,int *) ;
 int lstrcpyn (int *,int *,int) ;
 scalar_t__ lstrlen (int *) ;

__attribute__((used)) static VOID
ParseMemSettings(PVIRTMEM pVirtMem)
{
    TCHAR szDrives[1024];
    LPTSTR DrivePtr = szDrives;
    TCHAR szDrive[3];
    TCHAR szVolume[MAX_PATH + 1];
    INT MinSize;
    INT MaxSize;
    INT DriveLen;
    INT PgCnt = 0;
    INT Len;

    DriveLen = GetLogicalDriveStrings(1023,
                                      szDrives);

    while (DriveLen != 0)
    {
        Len = lstrlen(DrivePtr) + 1;
        DriveLen -= Len;

        DrivePtr = _tcsupr(DrivePtr);


        lstrcpyn(szDrive, DrivePtr, sizeof(szDrive) / sizeof(TCHAR));

        if (GetDriveType(DrivePtr) == DRIVE_FIXED)
        {
            MinSize = -1;
            MaxSize = -1;


            if (!_tcsncmp(pVirtMem->szPagingFiles, szDrive, 2))
            {
                GetPageFileSizes(pVirtMem->szPagingFiles,
                                 &MinSize,
                                 &MaxSize);
            }

            pVirtMem->Pagefile[PgCnt].OldMinSize = MinSize;
            pVirtMem->Pagefile[PgCnt].OldMaxSize = MaxSize;
            pVirtMem->Pagefile[PgCnt].NewMinSize = MinSize;
            pVirtMem->Pagefile[PgCnt].NewMaxSize = MaxSize;
            pVirtMem->Pagefile[PgCnt].bUsed = TRUE;
            lstrcpy(pVirtMem->Pagefile[PgCnt].szDrive, szDrive);



            if (GetVolumeInformation(DrivePtr,
                                     szVolume,
                                     MAX_PATH + 1,
                                     ((void*)0),
                                     ((void*)0),
                                     ((void*)0),
                                     ((void*)0),
                                     0))
            {
                pVirtMem->Pagefile[PgCnt].pszVolume = HeapAlloc(GetProcessHeap(),
                                                                0,
                                                                (_tcslen(szVolume) + 1) * sizeof(TCHAR));
                if (pVirtMem->Pagefile[PgCnt].pszVolume != ((void*)0))
                    _tcscpy(pVirtMem->Pagefile[PgCnt].pszVolume, szVolume);
            }

            PgCnt++;
        }

        DrivePtr += Len;
    }

    pVirtMem->Count = PgCnt;
}
