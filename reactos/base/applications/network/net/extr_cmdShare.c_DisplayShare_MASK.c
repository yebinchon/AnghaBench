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
struct TYPE_3__ {scalar_t__ shi2_max_uses; scalar_t__ shi2_current_uses; int /*<<< orphan*/  shi2_remark; int /*<<< orphan*/  shi2_path; int /*<<< orphan*/  shi2_netname; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_1__* PSHARE_INFO_2 ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  StdOut ; 

NET_API_STATUS
FUNC5(
    PWSTR pShareName)
{
    PSHARE_INFO_2 pBuffer = NULL;
    INT nPaddedLength = 22;
    NET_API_STATUS Status;

    Status = FUNC2(NULL,
                             pShareName,
                             2,
                             (LPBYTE*)&pBuffer);
    if (Status != NERR_Success)
        return Status;

    FUNC4(4731, nPaddedLength);
    FUNC0(StdOut, L"%s\n", pBuffer->shi2_netname);

    FUNC4(4339, nPaddedLength);
    FUNC0(StdOut, L"%s\n", pBuffer->shi2_path);

    FUNC4(4334, nPaddedLength);
    FUNC0(StdOut, L"%s\n", pBuffer->shi2_remark);

    FUNC4(4735, nPaddedLength);
    if (pBuffer->shi2_max_uses == (DWORD)-1)
        FUNC3(4736);
    else
        FUNC0(StdOut, L"%lu", pBuffer->shi2_max_uses);
    FUNC0(StdOut, L"\n");

    FUNC4(4737, nPaddedLength);
    if (pBuffer->shi2_current_uses > 0)
        FUNC0(StdOut, L"%lu", pBuffer->shi2_current_uses);
    FUNC0(StdOut, L"\n");

    FUNC1(pBuffer);

    return NERR_Success;
}