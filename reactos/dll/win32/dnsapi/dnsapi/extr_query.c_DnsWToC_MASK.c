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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PCHAR
FUNC3(const WCHAR *WideString)
{
    PCHAR AnsiString;
    int AnsiLen = FUNC2(CP_ACP,
                                      0,
                                      WideString,
                                      -1,
                                      NULL,
                                      0,
                                      NULL,
                                      0);
    if (AnsiLen == 0)
        return NULL;
    AnsiString = FUNC0(FUNC1(), 0, AnsiLen);
    if (AnsiString == NULL)
    {
        return NULL;
    }
    FUNC2(CP_ACP,
                        0,
                        WideString,
                        -1,
                        AnsiString,
                        AnsiLen,
                        NULL,
                        0);

    return AnsiString;
}