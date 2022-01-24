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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *format)
{
    char format_char;
    size_t format_len = FUNC0(format);

    /* The last character in the format string must be the format char */
    format_char = format[format_len - 1];

    if (format[0] != '%') {
        return -1;
    }

    /*
     * I'm not sure why this test is here.  It's ensuring that the format
     * string after the first character doesn't have a single quote, a
     * lowercase l, or a percent. This is the reverse of the commented-out
     * test about 10 lines ago.
     */
    if (FUNC1(format + 1, "'l%")) {
        return -1;
    }

    /*
     * Also curious about this function is that it accepts format strings
     * like "%xg", which are invalid for floats.  In general, the
     * interface to this function is not very good, but changing it is
     * difficult because it's a public API.
     */
    if (!(format_char == 'e' || format_char == 'E'
          || format_char == 'f' || format_char == 'F'
          || format_char == 'g' || format_char == 'G')) {
        return -1;
    }

    return 0;
}