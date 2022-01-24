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
typedef  int /*<<< orphan*/  strbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char const,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,char const) ; 

__attribute__((used)) static strbuf *
FUNC3(const char *boundary, FILE *in, const int wantfile,
    strbuf *value, FILE *out)
{
    int c, i, k, matched;

    matched = k = 0;

    while ((c = FUNC1(in)) != EOF) {

        /*
         * If we partially match the boundary, then we copy the
         * entire matching prefix to the output.  We do not need to
         * backtrack and look for shorter matching prefixes because
         * they cannot exist.  The boundary always begins with '\r'
         * and never contains another '\r'.
         */

        if (matched > 0 && c != boundary[matched]) {
            for (i = 0; i < matched; i++) {
                if (wantfile == 0) {
                    value = FUNC2(value, k++, boundary[i]);
                }
                else if (out != 0) {
                    FUNC0(boundary[i], out);
                }
            }
            matched = 0;
        }

        /* check for full or partial boundary match */

        if (c == boundary[matched]) {
            if (boundary[++matched] == 0) {
                break;   /* full match */
            }
            continue;    /* partial match */
        }

        /* no match, so copy byte to output */

        if (wantfile == 0) {
            value = FUNC2(value, k++, c);
        }
        else if (out != 0) {
            FUNC0(c, out);
        }
    }
    if (wantfile == 0) {
        return FUNC2(value, k, 0);
    }
    return 0;
}