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
 int /*<<< orphan*/  FUNC0 (char const*,size_t) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int,char*,char const*,char const*,char*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(const char *file, int line, const char *st1, const char *st2,
                 const char *s1, const char *s2, size_t len)
{
    if (s1 == NULL && s2 == NULL)
      return 1;
    if (s1 == NULL || s2 == NULL || FUNC1(s1, s2, len) != 0) {
        FUNC2(NULL, file, line, "string", st1, st2, "==",
                                 s1, s1 == NULL ? 0 : FUNC0(s1, len),
                                 s2, s2 == NULL ? 0 : FUNC0(s2, len));
        return 0;
    }
    return 1;
}