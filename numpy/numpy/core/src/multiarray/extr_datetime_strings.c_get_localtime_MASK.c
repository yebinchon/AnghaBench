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
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  NPY_TIME_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  PyExc_OSError ; 
 scalar_t__ FUNC1 (struct tm*,int /*<<< orphan*/ *) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct tm*) ; 
 scalar_t__ FUNC4 (struct tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tm*,struct tm*,int) ; 

__attribute__((used)) static int
FUNC6(NPY_TIME_T *ts, struct tm *tms)
{
    char *func_name = "<unknown>";
#if defined(_WIN32)
 #if defined(_MSC_VER) && (_MSC_VER >= 1400)
    if (localtime_s(tms, ts) != 0) {
        func_name = "localtime_s";
        goto fail;
    }
 #elif defined(NPY_MINGW_USE_CUSTOM_MSVCR)
    if (_localtime64_s(tms, ts) != 0) {
        func_name = "_localtime64_s";
        goto fail;
    }
 #else
    struct tm *tms_tmp;
    tms_tmp = localtime(ts);
    if (tms_tmp == NULL) {
        func_name = "localtime";
        goto fail;
    }
    memcpy(tms, tms_tmp, sizeof(struct tm));
 #endif
#else
    if (FUNC3(ts, tms) == NULL) {
        func_name = "localtime_r";
        goto fail;
    }
#endif

    return 0;

fail:
    FUNC0(PyExc_OSError, "Failed to use '%s' to convert "
                                "to a local time", func_name);
    return -1;
}