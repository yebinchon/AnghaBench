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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  MAX_STRING_WIDTH ; 
 int MEM_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (size_t) ; 
 size_t bn_bytes ; 
 size_t FUNC6 (unsigned char*,size_t const,char*,int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,int,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void FUNC13(const char *prefix, const char *file,
                                    int line, const char *type,
                                    const char *left, const char *right,
                                    const char *op,
                                    const BIGNUM *bn1, const BIGNUM *bn2)
{
    const size_t bytes = bn_bytes;
    char b1[MAX_STRING_WIDTH + 1], b2[MAX_STRING_WIDTH + 1];
    char *p, bdiff[MAX_STRING_WIDTH + 1];
    size_t l1, l2, n1, n2, i, len;
    unsigned int cnt, diff, real_diff;
    unsigned char *m1 = NULL, *m2 = NULL;
    int lz1 = 1, lz2 = 1;
    unsigned char buffer[MEM_BUFFER_SIZE * 2], *bufp = buffer;

    FUNC10(prefix, file, line, type, left, right, op);
    l1 = bn1 == NULL ? 0 : (FUNC3(bn1) + (FUNC2(bn1) ? 1 : 0));
    l2 = bn2 == NULL ? 0 : (FUNC3(bn2) + (FUNC2(bn2) ? 1 : 0));
    if (l1 == 0 && l2 == 0) {
        if ((bn1 == NULL) == (bn2 == NULL)) {
            FUNC7();
            FUNC8(bn1, ' ');
        } else {
            FUNC9(left, right);
            FUNC7();
            FUNC8(bn1, '-');
            FUNC8(bn2, '+');
        }
        goto fin;
    }

    if (l1 != l2 || bn1 == NULL || bn2 == NULL || FUNC1(bn1, bn2) != 0)
        FUNC9(left, right);
    FUNC7();

    len = ((l1 > l2 ? l1 : l2) + bytes - 1) / bytes * bytes;

    if (len > MEM_BUFFER_SIZE && (bufp = FUNC5(len * 2)) == NULL) {
        bufp = buffer;
        len = MEM_BUFFER_SIZE;
        FUNC12("WARNING: these BIGNUMs have been truncated\n");
    }

    if (bn1 != NULL) {
        m1 = bufp;
        FUNC0(bn1, m1, len);
    }
    if (bn2 != NULL) {
        m2 = bufp + len;
        FUNC0(bn2, m2, len);
    }

    while (len > 0) {
        cnt = 8 * (len - bytes);
        n1 = FUNC6(m1, bytes, b1, &lz1, bn1);
        n2 = FUNC6(m2, bytes, b2, &lz2, bn2);

        diff = real_diff = 0;
        i = 0;
        p = bdiff;
        for (i=0; b1[i] != '\0'; i++)
            if (b1[i] == b2[i] || b1[i] == ' ' || b2[i] == ' ') {
                *p++ = ' ';
                diff |= b1[i] != b2[i];
            } else {
                *p++ = '^';
                real_diff = diff = 1;
            }
        *p++ = '\0';
        if (!diff) {
            FUNC12(" %s:% 5d\n", n2 > n1 ? b2 : b1, cnt);
        } else {
            if (cnt == 0 && bn1 == NULL)
                FUNC12("-%s\n", b1);
            else if (cnt == 0 || n1 > 0)
                FUNC12("-%s:% 5d\n", b1, cnt);
            if (cnt == 0 && bn2 == NULL)
                FUNC12("+%s\n", b2);
            else if (cnt == 0 || n2 > 0)
                FUNC12("+%s:% 5d\n", b2, cnt);
            if (real_diff && (cnt == 0 || (n1 > 0 && n2 > 0))
                    && bn1 != NULL && bn2 != NULL)
                FUNC12(" %s\n", bdiff);
        }
        if (m1 != NULL)
            m1 += bytes;
        if (m2 != NULL)
            m2 += bytes;
        len -= bytes;
    }
fin:
    FUNC11();
    if (bufp != buffer)
        FUNC4(bufp);
}