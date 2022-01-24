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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TRACK_VARS_ENV ; 
 size_t TRACK_VARS_SERVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t) ; 
 char** environ ; 
 char* FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/  http_globals ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned long) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(zval *array_ptr)
{
    char buf[128];
    char **env, *p, *t = buf;
    size_t alloc_size = sizeof(buf);
    unsigned long nlen; /* ptrdiff_t is not portable */

    if (FUNC5(FUNC0(http_globals)[TRACK_VARS_ENV]) == IS_ARRAY &&
        FUNC4(array_ptr) != FUNC2(FUNC0(http_globals)[TRACK_VARS_ENV]) &&
        FUNC15(FUNC3(FUNC0(http_globals)[TRACK_VARS_ENV])) > 0
    ) {
        FUNC16(array_ptr);
        FUNC1(array_ptr, &FUNC0(http_globals)[TRACK_VARS_ENV]);
        return;
    } else if (FUNC5(FUNC0(http_globals)[TRACK_VARS_SERVER]) == IS_ARRAY &&
        FUNC4(array_ptr) != FUNC2(FUNC0(http_globals)[TRACK_VARS_SERVER]) &&
        FUNC15(FUNC3(FUNC0(http_globals)[TRACK_VARS_SERVER])) > 0
    ) {
        FUNC16(array_ptr);
        FUNC1(array_ptr, &FUNC0(http_globals)[TRACK_VARS_SERVER]);
        return;
    }

    FUNC13();
    for (env = environ; env != NULL && *env != NULL; env++) {
        p = FUNC11(*env, '=');
        if (!p) {               /* malformed entry? */
            continue;
        }
        nlen = p - *env;
        if (nlen >= alloc_size) {
            alloc_size = nlen + 64;
            t = (t == buf ? FUNC8(alloc_size): FUNC9(t, alloc_size));
        }
        FUNC10(t, *env, nlen);
        t[nlen] = '\0';
        FUNC6(t, nlen, p + 1, FUNC12( p + 1 ), array_ptr);
    }
    FUNC14();
    if (t != buf && t != NULL) {
        FUNC7(t);
    }
}