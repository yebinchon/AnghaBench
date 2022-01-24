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
 void** hex_digits ; 
 scalar_t__ FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (void*,int) ; 
 char const* url_default_ok ; 

char *FUNC3(void *talloc_ctx, const char *url, const char *ok)
{
    char *rv = FUNC2(talloc_ctx, FUNC1(url) * 3 + 1);
    char *out = rv;
    bool negate = ok && ok[0] == '~';

    for (char c; (c = *url); url++) {
        bool as_is = negate ? !FUNC0(ok + 1, c)
                            : (FUNC0(url_default_ok, c) || (ok && FUNC0(ok, c)));
        if (as_is) {
            *out++ = c;
        } else {
            unsigned char v = c;
            *out++ = '%';
            *out++ = hex_digits[v / 16];
            *out++ = hex_digits[v % 16];
        }
    }

    *out = 0;
    return rv;
}