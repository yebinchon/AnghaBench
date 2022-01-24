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
struct PATH_LEN_CONSTRAINT {int /*<<< orphan*/  dwPathLenConstraint; void* fPathLenConstraint; } ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,...) ; 
 void* TRUE ; 

__attribute__((used)) static BOOL FUNC4(const BYTE *pbEncoded,
 DWORD cbEncoded, DWORD dwFlags, void *pvStructInfo, DWORD *pcbStructInfo,
 DWORD *pcbDecoded)
{
    BOOL ret = TRUE;
    DWORD bytesNeeded = sizeof(struct PATH_LEN_CONSTRAINT), size;

    FUNC3("%p, %d, %08x, %p, %d, %p\n", pbEncoded, cbEncoded, dwFlags,
     pvStructInfo, *pcbStructInfo, pcbDecoded);

    if (!pvStructInfo)
    {
        ret = FUNC0(pbEncoded, cbEncoded, dwFlags, NULL,
         &size, pcbDecoded);
        *pcbStructInfo = bytesNeeded;
    }
    else if (*pcbStructInfo < bytesNeeded)
    {
        FUNC2(ERROR_MORE_DATA);
        *pcbStructInfo = bytesNeeded;
        ret = FALSE;
    }
    else
    {
        struct PATH_LEN_CONSTRAINT *constraint = pvStructInfo;

        *pcbStructInfo = bytesNeeded;
        size = sizeof(constraint->dwPathLenConstraint);
        ret = FUNC0(pbEncoded, cbEncoded, dwFlags,
         &constraint->dwPathLenConstraint, &size, pcbDecoded);
        if (ret)
            constraint->fPathLenConstraint = TRUE;
        FUNC3("got an int, dwPathLenConstraint is %d\n",
         constraint->dwPathLenConstraint);
    }
    FUNC3("returning %d (%08x)\n", ret, FUNC1());
    return ret;
}