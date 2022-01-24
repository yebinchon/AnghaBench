#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_4__ {int nrFields; } ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 

__attribute__((used)) static INT
FUNC4 (const DATETIME_INFO *infoPtr, INT count, LPWSTR dst)
{
    WCHAR buf[80];
    int i;

    if (!dst || (count <= 0)) return 0;

    dst[0] = 0;
    for (i = 0; i < infoPtr->nrFields; i++)
    {
        FUNC1(infoPtr, i, buf, FUNC0(buf));
        if ((FUNC3(dst) + FUNC3(buf)) < count)
            FUNC2(dst, buf);
        else break;
    }
    return FUNC3(dst);
}