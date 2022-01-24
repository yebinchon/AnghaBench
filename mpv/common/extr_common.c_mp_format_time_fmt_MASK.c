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
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,...) ; 
 int FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 

char *FUNC4(const char *fmt, double time)
{
    if (time == MP_NOPTS_VALUE)
        return FUNC3(NULL, "unknown");
    char *sign = time < 0 ? "-" : "";
    time = time < 0 ? -time : time;
    long long int itime = time;
    long long int h, m, tm, s;
    int ms = FUNC1((time - itime) * 1000);
    if (ms >= 1000) {
        ms -= 1000;
        itime += 1;
    }
    s = itime;
    tm = s / 60;
    h = s / 3600;
    s -= h * 3600;
    m = s / 60;
    s -= m * 60;
    char *res = FUNC3(NULL, "");
    while (*fmt) {
        if (fmt[0] == '%') {
            fmt++;
            switch (fmt[0]) {
            case 'h': FUNC0(&res, "%s%lld", sign, h); break;
            case 'H': FUNC0(&res, "%s%02lld", sign, h); break;
            case 'm': FUNC0(&res, "%s%lld", sign, tm); break;
            case 'M': FUNC0(&res, "%02lld", m); break;
            case 's': FUNC0(&res, "%s%lld", sign, itime); break;
            case 'S': FUNC0(&res, "%02lld", s); break;
            case 'T': FUNC0(&res, "%03d", ms); break;
            case 'f': FUNC0(&res, "%f", time); break;
            case '%': FUNC0(&res, "%s", "%"); break;
            default: goto error;
            }
            fmt++;
        } else {
            FUNC0(&res, "%c", *fmt);
            fmt++;
        }
    }
    return res;
error:
    FUNC2(res);
    return NULL;
}