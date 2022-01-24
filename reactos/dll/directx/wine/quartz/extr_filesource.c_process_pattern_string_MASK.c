#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ULONG ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  IAsyncReader ;
typedef  scalar_t__ HRESULT ;
typedef  int BYTE ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int*) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC11(LPCWSTR wszPatternString, IAsyncReader * pReader)
{
    ULONG ulOffset;
    ULONG ulBytes;
    BYTE * pbMask;
    BYTE * pbValue;
    BYTE * pbFile;
    HRESULT hr = S_OK;
    ULONG strpos;

    FUNC4("\t\tPattern string: %s\n", FUNC6(wszPatternString));
    
    /* format: "offset, bytestocompare, mask, value" */

    ulOffset = FUNC10(wszPatternString, NULL, 10);

    if (!(wszPatternString = FUNC9(wszPatternString, ',')))
        return E_INVALIDARG;

    wszPatternString++; /* skip ',' */

    ulBytes = FUNC10(wszPatternString, NULL, 10);

    pbMask = FUNC1(FUNC0(), 0, ulBytes);
    pbValue = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, ulBytes);
    pbFile = FUNC1(FUNC0(), 0, ulBytes);

    /* default mask is match everything */
    FUNC8(pbMask, 0xFF, ulBytes);

    if (!(wszPatternString = FUNC9(wszPatternString, ',')))
        hr = E_INVALIDARG;

    if (hr == S_OK)
    {
        wszPatternString++; /* skip ',' */
        while (!FUNC7(*wszPatternString) && (*wszPatternString != ',')) wszPatternString++;

        for (strpos = 0; FUNC7(*wszPatternString) && (strpos/2 < ulBytes); wszPatternString++, strpos++)
        {
            if ((strpos % 2) == 1) /* odd numbered position */
                pbMask[strpos / 2] |= FUNC5(*wszPatternString);
            else
                pbMask[strpos / 2] = FUNC5(*wszPatternString) << 4;
        }

        if (!(wszPatternString = FUNC9(wszPatternString, ',')))
            hr = E_INVALIDARG;
        else
            wszPatternString++; /* skip ',' */
    }

    if (hr == S_OK)
    {
        for ( ; !FUNC7(*wszPatternString) && (*wszPatternString != ','); wszPatternString++)
            ;

        for (strpos = 0; FUNC7(*wszPatternString) && (strpos/2 < ulBytes); wszPatternString++, strpos++)
        {
            if ((strpos % 2) == 1) /* odd numbered position */
                pbValue[strpos / 2] |= FUNC5(*wszPatternString);
            else
                pbValue[strpos / 2] = FUNC5(*wszPatternString) << 4;
        }
    }

    if (hr == S_OK)
        hr = FUNC3(pReader, ulOffset, ulBytes, pbFile);

    if (hr == S_OK)
    {
        ULONG i;
        for (i = 0; i < ulBytes; i++)
            if ((pbFile[i] & pbMask[i]) != pbValue[i])
            {
                hr = S_FALSE;
                break;
            }
    }

    FUNC2(FUNC0(), 0, pbMask);
    FUNC2(FUNC0(), 0, pbValue);
    FUNC2(FUNC0(), 0, pbFile);

    /* if we encountered no errors with this string, and there is a following tuple, then we
     * have to match that as well to succeed */
    if ((hr == S_OK) && (wszPatternString = FUNC9(wszPatternString, ',')))
        return FUNC11(wszPatternString + 1, pReader);
    else
        return hr;
}