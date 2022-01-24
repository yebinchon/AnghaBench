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
struct TYPE_5__ {TYPE_1__* parts; } ;
struct TYPE_4__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_2__ STATUS_INFO ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT
FUNC4 (const STATUS_INFO *infoPtr, INT size, LPWSTR buf)
{
    INT len;

    FUNC0("\n");
    if (!(infoPtr->parts[0].text))
        return 0;

    len = FUNC3 (infoPtr->parts[0].text);

    if (!size)
        return len;
    else if (size > len) {
        FUNC2 (buf, infoPtr->parts[0].text);
	return len;
    }
    else {
        FUNC1 (buf, infoPtr->parts[0].text, (size - 1) * sizeof(WCHAR));
        buf[size - 1] = 0;
        return size - 1;
    }
}