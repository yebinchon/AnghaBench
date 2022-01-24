#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  cbData; scalar_t__ pbData; } ;
struct TYPE_11__ {int /*<<< orphan*/  szPrompt; struct TYPE_11__* hwndApp; struct TYPE_11__* dwPromptFlags; struct TYPE_11__* cbSize; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  TYPE_1__* DWORD ;
typedef  TYPE_2__ DATA_BLOB ;
typedef  TYPE_1__ CRYPTPROTECT_PROMPTSTRUCT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const DATA_BLOB* pDataIn, const DATA_BLOB* pOptionalEntropy,
       CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, DWORD dwFlags)
{
    FUNC0("pPromptStruct: %p\n", pPromptStruct);
    if (pPromptStruct)
    {
        FUNC0("  cbSize: 0x%x\n", pPromptStruct->cbSize);
        FUNC0("  dwPromptFlags: 0x%x\n", pPromptStruct->dwPromptFlags);
        FUNC0("  hwndApp: %p\n", pPromptStruct->hwndApp);
        FUNC0("  szPrompt: %p %s\n",
              pPromptStruct->szPrompt,
              pPromptStruct->szPrompt ? FUNC3(pPromptStruct->szPrompt)
              : "");
    }
    FUNC0("dwFlags: 0x%04x\n", dwFlags);
    FUNC1(pDataIn);
    if (pOptionalEntropy)
    {
        FUNC1(pOptionalEntropy);
        FUNC0("  %s\n",FUNC2((LPCSTR)pOptionalEntropy->pbData,pOptionalEntropy->cbData));
    }

}