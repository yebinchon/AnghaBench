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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ * strings; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  size_t DWORD ;
typedef  TYPE_1__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static LPWSTR FUNC2(const ASSEMBLY *assembly, DWORD index)
{
    int len;
    LPWSTR cpy;
    LPCSTR str = (LPCSTR)&assembly->strings[index];

    len = FUNC0(CP_ACP, 0, str, -1, NULL, 0);

    if ((cpy = FUNC1(len * sizeof(WCHAR))))
        FUNC0(CP_ACP, 0, str, -1, cpy, len);

    return cpy;
}