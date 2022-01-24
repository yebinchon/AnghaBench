#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {TYPE_1__* pCHMInfo; } ;
struct TYPE_4__ {char const* compiledFile; int /*<<< orphan*/ * pStorage; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ HHInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STGM_READ ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static WCHAR *FUNC9(HHInfo *info, const WCHAR *extW)
{
    static const WCHAR periodW[] = {'.',0};
    IStorage *pStorage = info->pCHMInfo->pStorage;
    IStream *pStream;
    WCHAR *filename;
    HRESULT hr;

    filename = FUNC3( (FUNC7(info->pCHMInfo->compiledFile)
                            + FUNC7(periodW) + FUNC7(extW) + 1) * sizeof(WCHAR) );
    FUNC6(filename, info->pCHMInfo->compiledFile);
    FUNC5(filename, periodW);
    FUNC5(filename, extW);
    hr = FUNC1(pStorage, filename, NULL, STGM_READ, 0, &pStream);
    if (FUNC0(hr))
    {
        FUNC4(filename);
        return FUNC8("");
    }
    FUNC2(pStream);
    return filename;
}