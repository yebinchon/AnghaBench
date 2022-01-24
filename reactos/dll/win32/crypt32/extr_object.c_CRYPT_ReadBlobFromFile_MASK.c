#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
typedef  TYPE_1__* PCERT_BLOB ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int TRUE ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(LPCWSTR fileName, PCERT_BLOB blob)
{
    BOOL ret = FALSE;
    HANDLE file;

    FUNC6("%s\n", FUNC7(fileName));

    file = FUNC1(fileName, GENERIC_READ, FILE_SHARE_READ, NULL,
     OPEN_EXISTING, 0, NULL);
    if (file != INVALID_HANDLE_VALUE)
    {
        ret = TRUE;
        blob->cbData = FUNC4(file, NULL);
        if (blob->cbData)
        {
            blob->pbData = FUNC2(blob->cbData);
            if (blob->pbData)
            {
                DWORD read;

                ret = FUNC5(file, blob->pbData, blob->cbData, &read, NULL) && read == blob->cbData;
                if (!ret) FUNC3(blob->pbData);
            }
            else
                ret = FALSE;
        }
        FUNC0(file);
    }
    FUNC6("returning %d\n", ret);
    return ret;
}