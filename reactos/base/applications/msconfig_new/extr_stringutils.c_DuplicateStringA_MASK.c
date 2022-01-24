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
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

LPSTR FUNC3(LPCSTR str)
{
    LPSTR dupStr;
    size_t strSizePlusNull;

    if (!str) return NULL;

    strSizePlusNull = FUNC2(str) + 1;

    dupStr = (LPSTR)FUNC0(0, strSizePlusNull * sizeof(CHAR));
    if (!dupStr) return NULL;

    FUNC1(dupStr, strSizePlusNull, str);

    return dupStr;
}