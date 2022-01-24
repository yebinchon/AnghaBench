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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static const char *FUNC5(const char *url, const char *proto)
{
    int l = FUNC2(proto);
    if (l > 0) {
        if (FUNC3(url, proto, l) == 0 && FUNC4("://", url + l, 3) == 0)
            return url + l + 3;
    } else if (!FUNC1(FUNC0(url))) {
        return url; // pure filenames
    }
    return NULL;
}