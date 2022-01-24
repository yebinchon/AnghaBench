#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct process {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  DbgUnmatched; } ;
struct module {TYPE_1__ module; } ;
struct TYPE_4__ {int NumberOfSections; int ExportedNamesSize; int DebugDirectorySize; } ;
typedef  TYPE_2__ IMAGE_SEPARATE_DEBUG_HEADER ;
typedef  int /*<<< orphan*/  IMAGE_SECTION_HEADER ;
typedef  int /*<<< orphan*/  IMAGE_DEBUG_DIRECTORY ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (struct process const*,struct module*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct process const*,struct module*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static BOOL FUNC10(const struct process* pcs, struct module* module,
                             const char* dbg_name, DWORD timestamp)
{
    char                                tmp[MAX_PATH];
    HANDLE                              hFile = INVALID_HANDLE_VALUE, hMap = 0;
    const BYTE*                         dbg_mapping = NULL;
    BOOL                                ret = FALSE;

    FUNC5("Processing DBG file %s\n", FUNC7(dbg_name));

    if (FUNC8(pcs, module, dbg_name, NULL, timestamp, 0, tmp, &module->module.DbgUnmatched) &&
        (hFile = FUNC1(tmp, GENERIC_READ, FILE_SHARE_READ, NULL,
                             OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL)) != INVALID_HANDLE_VALUE &&
        ((hMap = FUNC2(hFile, NULL, PAGE_READONLY, 0, 0, NULL)) != 0) &&
        ((dbg_mapping = FUNC4(hMap, FILE_MAP_READ, 0, 0, 0)) != NULL))
    {
        const IMAGE_SEPARATE_DEBUG_HEADER*      hdr;
        const IMAGE_SECTION_HEADER*             sectp;
        const IMAGE_DEBUG_DIRECTORY*            dbg;

        hdr = (const IMAGE_SEPARATE_DEBUG_HEADER*)dbg_mapping;
        /* section headers come immediately after debug header */
        sectp = (const IMAGE_SECTION_HEADER*)(hdr + 1);
        /* and after that and the exported names comes the debug directory */
        dbg = (const IMAGE_DEBUG_DIRECTORY*)
            (dbg_mapping + sizeof(*hdr) +
             hdr->NumberOfSections * sizeof(IMAGE_SECTION_HEADER) +
             hdr->ExportedNamesSize);

        ret = FUNC9(pcs, module, dbg_mapping, sectp,
                                      hdr->NumberOfSections, dbg,
                                      hdr->DebugDirectorySize / sizeof(*dbg));
    }
    else
        FUNC3("Couldn't find .DBG file %s (%s)\n", FUNC7(dbg_name), FUNC7(tmp));

    if (dbg_mapping) FUNC6(dbg_mapping);
    if (hMap) FUNC0(hMap);
    if (hFile != INVALID_HANDLE_VALUE) FUNC0(hFile);
    return ret;
}