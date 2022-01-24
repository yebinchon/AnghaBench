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

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_FIND_END ; 
 int /*<<< orphan*/  ASN1_R_MISSING_EOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_NESTED_ASN1_ERROR ; 
 int UINT32_MAX ; 
 scalar_t__ FUNC1 (unsigned char const**,long) ; 
 int /*<<< orphan*/  FUNC2 (long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,unsigned char const**,long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const unsigned char **in, long len, char inf)
{
    uint32_t expected_eoc;
    long plen;
    const unsigned char *p = *in, *q;
    /* If not indefinite length constructed just add length */
    if (inf == 0) {
        *in += len;
        return 1;
    }
    expected_eoc = 1;
    /*
     * Indefinite length constructed form. Find the end when enough EOCs are
     * found. If more indefinite length constructed headers are encountered
     * increment the expected eoc count otherwise just skip to the end of the
     * data.
     */
    while (len > 0) {
        if (FUNC1(&p, len)) {
            expected_eoc--;
            if (expected_eoc == 0)
                break;
            len -= 2;
            continue;
        }
        q = p;
        /* Just read in a header: only care about the length */
        if (!FUNC2(&plen, NULL, NULL, &inf, NULL, &p, len,
                             -1, 0, 0, NULL)) {
            FUNC0(ASN1_F_ASN1_FIND_END, ERR_R_NESTED_ASN1_ERROR);
            return 0;
        }
        if (inf) {
            if (expected_eoc == UINT32_MAX) {
                FUNC0(ASN1_F_ASN1_FIND_END, ERR_R_NESTED_ASN1_ERROR);
                return 0;
            }
            expected_eoc++;
        } else {
            p += plen;
        }
        len -= p - q;
    }
    if (expected_eoc) {
        FUNC0(ASN1_F_ASN1_FIND_END, ASN1_R_MISSING_EOC);
        return 0;
    }
    *in = p;
    return 1;
}