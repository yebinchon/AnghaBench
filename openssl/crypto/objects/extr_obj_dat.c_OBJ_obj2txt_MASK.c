#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tbuf ;
struct TYPE_4__ {unsigned char* data; int length; } ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  TYPE_1__ ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int NID_undef ; 
 char* FUNC9 (int) ; 
 char* FUNC10 (int) ; 
 int FUNC11 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 long ULONG_MAX ; 
 int FUNC14 (char const*) ; 

int FUNC15(char *buf, int buf_len, const ASN1_OBJECT *a, int no_name)
{
    int i, n = 0, len, nid, first, use_bn;
    BIGNUM *bl;
    unsigned long l;
    const unsigned char *p;
    char tbuf[FUNC8(i) + FUNC8(l) + 2];

    /* Ensure that, at every state, |buf| is NUL-terminated. */
    if (buf && buf_len > 0)
        buf[0] = '\0';

    if ((a == NULL) || (a->data == NULL))
        return 0;

    if (!no_name && (nid = FUNC11(a)) != NID_undef) {
        const char *s;
        s = FUNC9(nid);
        if (s == NULL)
            s = FUNC10(nid);
        if (s) {
            if (buf)
                FUNC13(buf, s, buf_len);
            n = FUNC14(s);
            return n;
        }
    }

    len = a->length;
    p = a->data;

    first = 1;
    bl = NULL;

    while (len > 0) {
        l = 0;
        use_bn = 0;
        for (;;) {
            unsigned char c = *p++;
            len--;
            if ((len == 0) && (c & 0x80))
                goto err;
            if (use_bn) {
                if (!FUNC1(bl, c & 0x7f))
                    goto err;
            } else
                l |= c & 0x7f;
            if (!(c & 0x80))
                break;
            if (!use_bn && (l > (ULONG_MAX >> 7L))) {
                if (bl == NULL && (bl = FUNC5()) == NULL)
                    goto err;
                if (!FUNC6(bl, l))
                    goto err;
                use_bn = 1;
            }
            if (use_bn) {
                if (!FUNC4(bl, bl, 7))
                    goto err;
            } else
                l <<= 7L;
        }

        if (first) {
            first = 0;
            if (l >= 80) {
                i = 2;
                if (use_bn) {
                    if (!FUNC7(bl, 80))
                        goto err;
                } else
                    l -= 80;
            } else {
                i = (int)(l / 40);
                l -= (long)(i * 40);
            }
            if (buf && (buf_len > 1)) {
                *buf++ = i + '0';
                *buf = '\0';
                buf_len--;
            }
            n++;
        }

        if (use_bn) {
            char *bndec;
            bndec = FUNC2(bl);
            if (!bndec)
                goto err;
            i = FUNC14(bndec);
            if (buf) {
                if (buf_len > 1) {
                    *buf++ = '.';
                    *buf = '\0';
                    buf_len--;
                }
                FUNC13(buf, bndec, buf_len);
                if (i > buf_len) {
                    buf += buf_len;
                    buf_len = 0;
                } else {
                    buf += i;
                    buf_len -= i;
                }
            }
            n++;
            n += i;
            FUNC12(bndec);
        } else {
            FUNC0(tbuf, sizeof(tbuf), ".%lu", l);
            i = FUNC14(tbuf);
            if (buf && (buf_len > 0)) {
                FUNC13(buf, tbuf, buf_len);
                if (i > buf_len) {
                    buf += buf_len;
                    buf_len = 0;
                } else {
                    buf += i;
                    buf_len -= i;
                }
            }
            n += i;
            l = 0;
        }
    }

    FUNC3(bl);
    return n;

 err:
    FUNC3(bl);
    return -1;
}