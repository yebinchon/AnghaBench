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
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

LPSTR FUNC4(LPCSTR str, size_t numOfChars)
{
    LPSTR dupStr;
    size_t strSize;

    if (!str) return NULL;

    strSize = FUNC2(FUNC3(str), numOfChars);

    dupStr = (LPSTR)FUNC0(0, (strSize + 1) * sizeof(CHAR));
    if (!dupStr) return NULL;

    FUNC1(dupStr, strSize + 1, str, strSize);
    dupStr[strSize] = '\0';

    return dupStr;
}