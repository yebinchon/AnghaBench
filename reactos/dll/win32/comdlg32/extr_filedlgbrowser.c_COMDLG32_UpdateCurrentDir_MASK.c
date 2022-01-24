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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  pidlAbsCurrent; } ;
struct TYPE_5__ {TYPE_1__ ShellInfos; } ;
typedef  int /*<<< orphan*/  STRRET ;
typedef  int /*<<< orphan*/  LPSHELLFOLDER ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ FileOpenDlgInfos ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGDN_FORPARSING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(const FileOpenDlgInfos *fodInfos)
{
    LPSHELLFOLDER psfDesktop;
    STRRET strret;
    HRESULT res;

    res = FUNC3(&psfDesktop);
    if (FUNC0(res))
        return;
    
    res = FUNC1(psfDesktop, fodInfos->ShellInfos.pidlAbsCurrent,
                                        SHGDN_FORPARSING, &strret);
    if (FUNC4(res)) {
        WCHAR wszCurrentDir[MAX_PATH];
        
        res = FUNC6(&strret, fodInfos->ShellInfos.pidlAbsCurrent, wszCurrentDir, MAX_PATH);
        if (FUNC4(res))
            FUNC5(wszCurrentDir);
    }
    
    FUNC2(psfDesktop);
}