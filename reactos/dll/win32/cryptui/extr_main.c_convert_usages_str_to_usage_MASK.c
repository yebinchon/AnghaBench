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
typedef  scalar_t__* LPSTR ;
typedef  int /*<<< orphan*/  CERT_ENHKEY_USAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__* FUNC3 (scalar_t__*,char) ; 

__attribute__((used)) static CERT_ENHKEY_USAGE *FUNC4(LPSTR usageStr)
{
    CERT_ENHKEY_USAGE *usage = FUNC1(FUNC0(), HEAP_ZERO_MEMORY,
     sizeof(CERT_ENHKEY_USAGE));

    if (usage)
    {
        LPSTR ptr, comma;

        for (ptr = usageStr, comma = FUNC3(ptr, ','); usage && ptr && *ptr;
         ptr = comma ? comma + 1 : NULL,
         comma = ptr ? FUNC3(ptr, ',') : NULL)
        {
            if (comma)
                *comma = 0;
            usage = FUNC2(usage, ptr);
        }
    }
    return usage;
}