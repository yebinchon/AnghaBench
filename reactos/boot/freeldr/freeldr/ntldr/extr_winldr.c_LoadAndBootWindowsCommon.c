
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_20__ {scalar_t__ EntryPoint; } ;
struct TYPE_19__ {TYPE_1__* Extension; int ConfigurationRoot; } ;
struct TYPE_18__ {int LoaderPagesSpanned; } ;
typedef int PVOID ;
typedef TYPE_2__* PLOADER_PARAMETER_BLOCK ;
typedef TYPE_3__* PLDR_DATA_TABLE_ENTRY ;
typedef scalar_t__ PCSTR ;
typedef int PCHAR ;
typedef int (* KERNEL_ENTRY_POINT ) (TYPE_2__*) ;
typedef scalar_t__ BOOLEAN ;
typedef int ARC_STATUS ;


 int ASSERT (int) ;
 int ENOEXEC ;
 int ESUCCESS ;
 int IniCleanup () ;
 scalar_t__ KI_USER_SHARED_DATA ;
 scalar_t__ LoadWindowsCore (int ,TYPE_2__*,scalar_t__,scalar_t__,TYPE_3__**) ;
 int LoaderPagesSpanned ;
 int MM_PAGE_SIZE ;
 int MachHwDetect () ;
 int MachPrepareForReactOS () ;
 TYPE_2__* PaToVa (TYPE_2__*) ;
 int RtlZeroMemory (int ,int ) ;
 int TRACE (char*,...) ;
 int UiDrawBackdrop () ;
 int UiDrawProgressBarCenter (int,int,char*) ;
 int UiMessageBox (char*) ;
 int WinLdrInitializePhase1 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ WinLdrLoadBootDrivers (TYPE_2__*,scalar_t__) ;
 int WinLdrSetProcessorContext () ;
 int WinLdrSetupEms (int ) ;
 int WinLdrSetupMachineDependent (TYPE_2__*) ;
 int WinLdrSetupMemoryLayout (TYPE_2__*) ;
 int WinLdrpDumpArcDisks (TYPE_2__*) ;
 int WinLdrpDumpBootDriver (TYPE_2__*) ;
 int WinLdrpDumpMemoryDescriptors (TYPE_2__*) ;
 scalar_t__ strstr (scalar_t__,char*) ;
 int stub1 (TYPE_2__*) ;

ARC_STATUS
LoadAndBootWindowsCommon(
    USHORT OperatingSystemVersion,
    PLOADER_PARAMETER_BLOCK LoaderBlock,
    PCSTR BootOptions,
    PCSTR BootPath,
    BOOLEAN Setup)
{
    PLOADER_PARAMETER_BLOCK LoaderBlockVA;
    BOOLEAN Success;
    PLDR_DATA_TABLE_ENTRY KernelDTE;
    KERNEL_ENTRY_POINT KiSystemStartup;
    PCSTR SystemRoot;

    TRACE("LoadAndBootWindowsCommon()\n");

    ASSERT(OperatingSystemVersion != 0);







    SystemRoot = strstr(BootPath, "\\");


    UiDrawBackdrop();
    UiDrawProgressBarCenter(20, 100, "Detecting hardware...");
    LoaderBlock->ConfigurationRoot = MachHwDetect();


    Success = LoadWindowsCore(OperatingSystemVersion,
                              LoaderBlock,
                              BootOptions,
                              BootPath,
                              &KernelDTE);
    if (!Success)
    {
        UiMessageBox("Error loading NTOS core.");
        return ENOEXEC;
    }


    UiDrawBackdrop();
    UiDrawProgressBarCenter(100, 100, "Loading boot drivers...");
    Success = WinLdrLoadBootDrivers(LoaderBlock, BootPath);
    TRACE("Boot drivers loading %s\n", Success ? "successful" : "failed");


    IniCleanup();


    WinLdrInitializePhase1(LoaderBlock,
                           BootOptions,
                           SystemRoot,
                           BootPath,
                           OperatingSystemVersion);


    KiSystemStartup = (KERNEL_ENTRY_POINT)KernelDTE->EntryPoint;
    LoaderBlockVA = PaToVa(LoaderBlock);


    MachPrepareForReactOS();





    WinLdrSetupMachineDependent(LoaderBlock);


    WinLdrSetupMemoryLayout(LoaderBlock);


    WinLdrSetProcessorContext();


    LoaderBlock->Extension->LoaderPagesSpanned = LoaderPagesSpanned;

    TRACE("Hello from paged mode, KiSystemStartup %p, LoaderBlockVA %p!\n",
          KiSystemStartup, LoaderBlockVA);


    RtlZeroMemory((PVOID)KI_USER_SHARED_DATA, MM_PAGE_SIZE);

    WinLdrpDumpMemoryDescriptors(LoaderBlockVA);
    WinLdrpDumpBootDriver(LoaderBlockVA);

    WinLdrpDumpArcDisks(LoaderBlockVA);



    (*KiSystemStartup)(LoaderBlockVA);
    return ESUCCESS;
}
