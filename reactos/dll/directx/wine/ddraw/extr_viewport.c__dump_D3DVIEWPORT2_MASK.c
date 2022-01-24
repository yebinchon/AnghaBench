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
struct TYPE_3__ {int /*<<< orphan*/  dvMaxZ; int /*<<< orphan*/  dvMinZ; int /*<<< orphan*/  dvClipHeight; int /*<<< orphan*/  dvClipWidth; int /*<<< orphan*/  dvClipY; int /*<<< orphan*/  dvClipX; int /*<<< orphan*/  dwHeight; int /*<<< orphan*/  dwWidth; int /*<<< orphan*/  dwY; int /*<<< orphan*/  dwX; int /*<<< orphan*/  dwSize; } ;
typedef  TYPE_1__ D3DVIEWPORT2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC1(const D3DVIEWPORT2 *lpvp)
{
    FUNC0("    - dwSize = %d   dwX = %d   dwY = %d\n",
            lpvp->dwSize, lpvp->dwX, lpvp->dwY);
    FUNC0("    - dwWidth = %d   dwHeight = %d\n",
            lpvp->dwWidth, lpvp->dwHeight);
    FUNC0("    - dvClipX = %f   dvClipY = %f\n",
            lpvp->dvClipX, lpvp->dvClipY);
    FUNC0("    - dvClipWidth = %f   dvClipHeight = %f\n",
            lpvp->dvClipWidth, lpvp->dvClipHeight);
    FUNC0("    - dvMinZ = %f   dvMaxZ = %f\n",
            lpvp->dvMinZ, lpvp->dvMaxZ);
}