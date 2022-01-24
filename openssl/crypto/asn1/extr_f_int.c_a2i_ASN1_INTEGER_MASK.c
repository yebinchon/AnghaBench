#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int length; unsigned char* data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_1__ ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_A2I_ASN1_INTEGER ; 
 int /*<<< orphan*/  ASN1_R_NON_HEX_CHARACTERS ; 
 int /*<<< orphan*/  ASN1_R_ODD_NUMBER_OF_CHARS ; 
 int /*<<< orphan*/  ASN1_R_SHORT_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 unsigned char* FUNC2 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  V_ASN1_INTEGER ; 
 int /*<<< orphan*/  FUNC5 (char) ; 

int FUNC6(BIO *bp, ASN1_INTEGER *bs, char *buf, int size)
{
    int i, j, k, m, n, again, bufsize;
    unsigned char *s = NULL, *sp;
    unsigned char *bufp;
    int num = 0, slen = 0, first = 1;

    bs->type = V_ASN1_INTEGER;

    bufsize = FUNC1(bp, buf, size);
    for (;;) {
        if (bufsize < 1)
            goto err;
        i = bufsize;
        if (buf[i - 1] == '\n')
            buf[--i] = '\0';
        if (i == 0)
            goto err;
        if (buf[i - 1] == '\r')
            buf[--i] = '\0';
        if (i == 0)
            goto err;
        again = (buf[i - 1] == '\\');

        for (j = 0; j < i; j++) {
            if (!FUNC5(buf[j]))
            {
                i = j;
                break;
            }
        }
        buf[i] = '\0';
        /*
         * We have now cleared all the crap off the end of the line
         */
        if (i < 2)
            goto err;

        bufp = (unsigned char *)buf;
        if (first) {
            first = 0;
            if ((bufp[0] == '0') && (bufp[1] == '0')) {
                bufp += 2;
                i -= 2;
            }
        }
        k = 0;
        i -= again;
        if (i % 2 != 0) {
            FUNC0(ASN1_F_A2I_ASN1_INTEGER, ASN1_R_ODD_NUMBER_OF_CHARS);
            FUNC3(s);
            return 0;
        }
        i /= 2;
        if (num + i > slen) {
            sp = FUNC2(s, slen, num + i * 2);
            if (sp == NULL) {
                FUNC0(ASN1_F_A2I_ASN1_INTEGER, ERR_R_MALLOC_FAILURE);
                FUNC3(s);
                return 0;
            }
            s = sp;
            slen = num + i * 2;
        }
        for (j = 0; j < i; j++, k += 2) {
            for (n = 0; n < 2; n++) {
                m = FUNC4(bufp[k + n]);
                if (m < 0) {
                    FUNC0(ASN1_F_A2I_ASN1_INTEGER,
                            ASN1_R_NON_HEX_CHARACTERS);
                    goto err;
                }
                s[num + j] <<= 4;
                s[num + j] |= m;
            }
        }
        num += i;
        if (again)
            bufsize = FUNC1(bp, buf, size);
        else
            break;
    }
    bs->length = num;
    bs->data = s;
    return 1;
 err:
    FUNC0(ASN1_F_A2I_ASN1_INTEGER, ASN1_R_SHORT_LINE);
    FUNC3(s);
    return 0;
}