
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int Flags; } ;
typedef int * PVOID ;
typedef int * PUNICODE_STRING ;
typedef int PLIST_ENTRY ;
typedef TYPE_1__* PLDR_DATA_TABLE_ENTRY ;
typedef int PCSTR ;
typedef int * PCHAR ;
typedef int FullPath ;
typedef int DriverPath ;
typedef int DllName ;
typedef int CHAR ;
typedef scalar_t__ BOOLEAN ;


 int ANSI_NULL ;
 int ERR (char*,...) ;
 scalar_t__ FALSE ;
 int LoaderBootDriver ;
 scalar_t__ PeLdrAllocateDataTableEntry (int ,int *,int *,int *,TYPE_1__**) ;
 scalar_t__ PeLdrCheckForLoadedDll (int ,int *,TYPE_1__**) ;
 scalar_t__ PeLdrLoadImage (int *,int ,int **) ;
 scalar_t__ PeLdrScanImportDescriptorTable (int ,int *,TYPE_1__*) ;
 int RtlStringCbCopyA (int *,int,int *) ;
 int RtlStringCbPrintfA (int *,int,char*,int ,...) ;
 int TRACE (char*,int *,int *) ;
 scalar_t__ TRUE ;
 int * strrchr (int *,char) ;

__attribute__((used)) static BOOLEAN
WinLdrLoadDeviceDriver(PLIST_ENTRY LoadOrderListHead,
                       PCSTR BootPath,
                       PUNICODE_STRING FilePath,
                       ULONG Flags,
                       PLDR_DATA_TABLE_ENTRY *DriverDTE)
{
    CHAR FullPath[1024];
    CHAR DriverPath[1024];
    CHAR DllName[1024];
    PCHAR DriverNamePos;
    BOOLEAN Success;
    PVOID DriverBase = ((void*)0);


    RtlStringCbPrintfA(DriverPath, sizeof(DriverPath), "%wZ", FilePath);
    DriverNamePos = strrchr(DriverPath, '\\');
    if (DriverNamePos != ((void*)0))
    {

        RtlStringCbCopyA(DllName, sizeof(DllName), DriverNamePos+1);


        *(DriverNamePos+1) = ANSI_NULL;
    }
    else
    {

        RtlStringCbCopyA(DllName, sizeof(DllName), DriverPath);
        *DriverPath = ANSI_NULL;
    }

    TRACE("DriverPath: '%s', DllName: '%s', LPB\n", DriverPath, DllName);


    Success = PeLdrCheckForLoadedDll(LoadOrderListHead, DllName, DriverDTE);
    if (Success)
    {

        return TRUE;
    }


    RtlStringCbPrintfA(FullPath, sizeof(FullPath), "%s%wZ", BootPath, FilePath);
    Success = PeLdrLoadImage(FullPath, LoaderBootDriver, &DriverBase);
    if (!Success)
        return FALSE;


    Success = PeLdrAllocateDataTableEntry(LoadOrderListHead, DllName, DllName, DriverBase, DriverDTE);
    if (!Success)
    {
        ERR("PeLdrAllocateDataTableEntry() failed\n");
        return FALSE;
    }


    (*DriverDTE)->Flags |= Flags;


    RtlStringCbPrintfA(FullPath, sizeof(FullPath), "%s%s", BootPath, DriverPath);
    Success = PeLdrScanImportDescriptorTable(LoadOrderListHead, FullPath, *DriverDTE);
    if (!Success)
    {
        ERR("PeLdrScanImportDescriptorTable() failed for %s\n", FullPath);
        return FALSE;
    }

    return TRUE;
}
