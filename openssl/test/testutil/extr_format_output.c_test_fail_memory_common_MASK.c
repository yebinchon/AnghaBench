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
 int MAX_STRING_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,size_t,char*,int) ; 
 scalar_t__ FUNC1 (unsigned char const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(const char *prefix, const char *file,
                                    int line, const char *type,
                                    const char *left, const char *right,
                                    const char *op,
                                    const unsigned char *m1, size_t l1,
                                    const unsigned char *m2, size_t l2)
{
    const size_t bytes = (MAX_STRING_WIDTH - 9) / 17 * 8;
    char b1[MAX_STRING_WIDTH + 1], b2[MAX_STRING_WIDTH + 1];
    char *p, bdiff[MAX_STRING_WIDTH + 1];
    size_t n1, n2, i;
    unsigned int cnt = 0, diff;

    FUNC3(prefix, file, line, type, left, right, op);
    if (m1 == NULL)
        l1 = 0;
    if (m2 == NULL)
        l2 = 0;
    if (l1 == 0 && l2 == 0) {
        if ((m1 == NULL) == (m2 == NULL)) {
            FUNC5(m1, ' ');
        } else {
            FUNC2(left, right);
            FUNC5(m1, '-');
            FUNC5(m2, '+');
        }
        goto fin;
    }

    if (l1 != l2 || (m1 != m2 && FUNC1(m1, m2, l1) != 0))
        FUNC2(left, right);

    while (l1 > 0 || l2 > 0) {
        n1 = n2 = 0;
        if (l1 > 0) {
            n1 = l1 > bytes ? bytes : l1;
            FUNC0(m1, n1, b1, 8);
        }
        if (l2 > 0) {
            n2 = l2 > bytes ? bytes : l2;
            FUNC0(m2, n2, b2, 8);
        }

        diff = 0;
        i = 0;
        p = bdiff;
        if (n1 > 0 && n2 > 0) {
            const size_t j = n1 < n2 ? n1 : n2;

            for (; i < j; i++) {
                if (m1[i] == m2[i]) {
                    *p++ = ' ';
                    *p++ = ' ';
                } else {
                    *p++ = '^';
                    *p++ = '^';
                    diff = 1;
                }
                if (i % 8 == 7 && i != j - 1)
                    *p++ = ' ';
            }
            *p++ = '\0';
        }

        if (n1 == n2 && !diff) {
            FUNC6("%04x: %s\n", cnt, b1);
        } else {
            if (cnt == 0 && (m1 == NULL || l1 == 0))
                FUNC5(m1, '-');
            else if (n1 > 0)
                FUNC6("%04x:-%s\n", cnt, b1);
            if (cnt == 0 && (m2 == NULL || l2 == 0))
                FUNC5(m2, '+');
            else if (n2 > 0)
                FUNC6("%04x:+%s\n", cnt, b2);
            if (diff && i > 0)
                FUNC6("%4s  %s\n", "", bdiff);
        }
        m1 += n1;
        m2 += n2;
        l1 -= n1;
        l2 -= n2;
        cnt += bytes;
    }
fin:
    FUNC4();
}