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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ batch ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int const,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(char *text, const char *def,
                         char *value, int n_min, int n_max,
                         char *buf, const int buf_size,
                         const char *desc1, const char *desc2
                         )
{
    int i;
 start:
    if (!batch)
        FUNC1(bio_err, "%s [%s]:", text, def);
    (void)FUNC0(bio_err);
    if (value != NULL) {
        if (!FUNC4(buf, buf_size, value, "\n", desc1))
            return 0;
        FUNC1(bio_err, "%s\n", value);
    } else {
        buf[0] = '\0';
        if (!batch) {
            if (!FUNC3(buf, buf_size, stdin))
                return 0;
        } else {
            buf[0] = '\n';
            buf[1] = '\0';
        }
    }

    if (buf[0] == '\0')
        return 0;
    if (buf[0] == '\n') {
        if ((def == NULL) || (def[0] == '\0'))
            return 1;
        if (!FUNC4(buf, buf_size, def, "\n", desc2))
            return 0;
    } else if ((buf[0] == '.') && (buf[1] == '\n')) {
        return 1;
    }

    i = FUNC6(buf);
    if (buf[i - 1] != '\n') {
        FUNC1(bio_err, "weird input :-(\n");
        return 0;
    }
    buf[--i] = '\0';
#ifdef CHARSET_EBCDIC
    ebcdic2ascii(buf, buf, i);
#endif
    if (!FUNC5(i, n_min, n_max)) {
        if (batch || value)
            return 0;
        goto start;
    }
    return 2;
}