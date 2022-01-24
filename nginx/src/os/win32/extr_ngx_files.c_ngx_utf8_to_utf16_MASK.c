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
typedef  int uint32_t ;
typedef  void* u_short ;
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_EILSEQ ; 
 void** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**,void**,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int**,int) ; 

__attribute__((used)) static u_short *
FUNC6(u_short *utf16, u_char *utf8, size_t *len)
{
    u_char    *p;
    u_short   *u, *last;
    uint32_t   n;

    p = utf8;
    u = utf16;
    last = utf16 + *len;

    while (u < last) {

        if (*p < 0x80) {
            *u++ = (u_short) *p;

            if (*p == 0) {
                *len = u - utf16;
                return utf16;
            }

            p++;

            continue;
        }

        if (u + 1 == last) {
            *len = u - utf16;
            break;
        }

        n = FUNC5(&p, 4);

        if (n > 0x10ffff) {
            FUNC3(NGX_EILSEQ);
            return NULL;
        }

        if (n > 0xffff) {
            n -= 0x10000;
            *u++ = (u_short) (0xd800 + (n >> 10));
            *u++ = (u_short) (0xdc00 + (n & 0x03ff));
            continue;
        }

        *u++ = (u_short) n;
    }

    /* the given buffer is not enough, allocate a new one */

    u = FUNC0(((p - utf8) + FUNC4(p) + 1) * sizeof(u_short));
    if (u == NULL) {
        return NULL;
    }

    FUNC2(u, utf16, *len * 2);

    utf16 = u;
    u += *len;

    for ( ;; ) {

        if (*p < 0x80) {
            *u++ = (u_short) *p;

            if (*p == 0) {
                *len = u - utf16;
                return utf16;
            }

            p++;

            continue;
        }

        n = FUNC5(&p, 4);

        if (n > 0x10ffff) {
            FUNC1(utf16);
            FUNC3(NGX_EILSEQ);
            return NULL;
        }

        if (n > 0xffff) {
            n -= 0x10000;
            *u++ = (u_short) (0xd800 + (n >> 10));
            *u++ = (u_short) (0xdc00 + (n & 0x03ff));
            continue;
        }

        *u++ = (u_short) n;
    }

    /* unreachable */
}