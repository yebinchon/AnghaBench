#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
struct TYPE_20__ {scalar_t__ EntryPoint; } ;
struct TYPE_19__ {TYPE_1__* Extension; int /*<<< orphan*/  ConfigurationRoot; } ;
struct TYPE_18__ {int /*<<< orphan*/  LoaderPagesSpanned; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_2__* PLOADER_PARAMETER_BLOCK ;
typedef  TYPE_3__* PLDR_DATA_TABLE_ENTRY ;
typedef  scalar_t__ PCSTR ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  (* KERNEL_ENTRY_POINT ) (TYPE_2__*) ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOEXEC ; 
 int /*<<< orphan*/  ESUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ KI_USER_SHARED_DATA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  LoaderPagesSpanned ; 
 int /*<<< orphan*/  MM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 

ARC_STATUS
FUNC22(
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

    FUNC7("LoadAndBootWindowsCommon()\n");

    FUNC0(OperatingSystemVersion != 0);

#ifdef _M_IX86
    /* Setup redirection support */
    WinLdrSetupEms((PCHAR)BootOptions);
#endif

    /* Convert BootPath to SystemRoot */
    SystemRoot = FUNC20(BootPath, "\\");

    /* Detect hardware */
    FUNC8();
    FUNC9(20, 100, "Detecting hardware...");
    LoaderBlock->ConfigurationRoot = FUNC3();

    /* Load the operating system core: the Kernel, the HAL and the Kernel Debugger Transport DLL */
    Success = FUNC2(OperatingSystemVersion,
                              LoaderBlock,
                              BootOptions,
                              BootPath,
                              &KernelDTE);
    if (!Success)
    {
        FUNC10("Error loading NTOS core.");
        return ENOEXEC;
    }

    /* Load boot drivers */
    FUNC8();
    FUNC9(100, 100, "Loading boot drivers...");
    Success = FUNC12(LoaderBlock, BootPath);
    FUNC7("Boot drivers loading %s\n", Success ? "successful" : "failed");

    /* Cleanup ini file */
    FUNC1();

    /* Initialize Phase 1 - no drivers loading anymore */
    FUNC11(LoaderBlock,
                           BootOptions,
                           SystemRoot,
                           BootPath,
                           OperatingSystemVersion);

    /* Save entry-point pointer and Loader block VAs */
    KiSystemStartup = (KERNEL_ENTRY_POINT)KernelDTE->EntryPoint;
    LoaderBlockVA = FUNC5(LoaderBlock);

    /* "Stop all motors", change videomode */
    FUNC4();

    /* Debugging... */
    //DumpMemoryAllocMap();

    /* Do the machine specific initialization */
    FUNC15(LoaderBlock);

    /* Map pages and create memory descriptors */
    FUNC16(LoaderBlock);

    /* Set processor context */
    FUNC13();

    /* Save final value of LoaderPagesSpanned */
    LoaderBlock->Extension->LoaderPagesSpanned = LoaderPagesSpanned;

    FUNC7("Hello from paged mode, KiSystemStartup %p, LoaderBlockVA %p!\n",
          KiSystemStartup, LoaderBlockVA);

    /* Zero KI_USER_SHARED_DATA page */
    FUNC6((PVOID)KI_USER_SHARED_DATA, MM_PAGE_SIZE);

    FUNC19(LoaderBlockVA);
    FUNC18(LoaderBlockVA);
#ifndef _M_AMD64
    FUNC17(LoaderBlockVA);
#endif

    /* Pass control */
    (*KiSystemStartup)(LoaderBlockVA);
    return ESUCCESS;
}