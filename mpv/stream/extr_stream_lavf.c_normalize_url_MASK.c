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
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* http_like ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (void*,char const*,char*) ; 

__attribute__((used)) static char *FUNC4(void *ta_parent, const char *filename)
{
    bstr proto = FUNC2(FUNC0(filename), NULL);
    for (int n = 0; http_like[n]; n++) {
        if (FUNC1(proto, http_like[n]))
            // Escape everything but reserved characters.
            // Also don't double-scape, so include '%'.
            return FUNC3(ta_parent, filename, ":/?#[]@!$&'()*+,;=%");
    }
    return (char *)filename;
}