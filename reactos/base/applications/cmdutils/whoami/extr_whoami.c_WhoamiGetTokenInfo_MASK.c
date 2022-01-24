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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TOKEN_INFORMATION_CLASS ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOKEN_READ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

VOID* FUNC10(TOKEN_INFORMATION_CLASS TokenType)
{
    HANDLE hToken = 0;
    DWORD dwLength = 0;
    VOID* pTokenInfo = 0;

    if (FUNC6(FUNC1(), TOKEN_READ, &hToken))
    {
        FUNC4(hToken,
                            TokenType,
                            NULL,
                            dwLength,
                            &dwLength);

        if (FUNC2() == ERROR_INSUFFICIENT_BUFFER)
        {
            pTokenInfo = FUNC5(FUNC3(), HEAP_ZERO_MEMORY, dwLength);
            if (pTokenInfo == NULL)
            {
                FUNC9(L"ERROR: not enough memory to allocate the token structure.\r\n");
                FUNC8(1);
            }
        }

        if (!FUNC4(hToken, TokenType,
                                 (LPVOID)pTokenInfo,
                                 dwLength,
                                 &dwLength))
        {
            FUNC9(L"ERROR 0x%x: could not get token information.\r\n", FUNC2());
            FUNC7(pTokenInfo);
            FUNC8(1);
        }

        FUNC0(hToken);
    }

    return pTokenInfo;
}