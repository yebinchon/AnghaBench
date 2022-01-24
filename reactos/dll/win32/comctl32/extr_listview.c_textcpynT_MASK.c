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
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(LPWSTR dest, BOOL isDestW, LPCWSTR src, BOOL isSrcW, INT max)
{
    if (isDestW)
	if (isSrcW) FUNC3(dest, src, max);
	else FUNC0(CP_ACP, 0, (LPCSTR)src, -1, dest, max);
    else
	if (isSrcW) FUNC1(CP_ACP, 0, src, -1, (LPSTR)dest, max, NULL, NULL);
	else FUNC2((LPSTR)dest, (LPCSTR)src, max);
}