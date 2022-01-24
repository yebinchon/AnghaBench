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
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const ASN1_VALUE **pval, unsigned char *cont, int *putype,
                  const ASN1_ITEM *it)
{
    BIGNUM *bn;
    int pad;
    if (*pval == NULL)
        return -1;
    bn = (BIGNUM *)*pval;
    /* If MSB set in an octet we need a padding byte */
    if (FUNC1(bn) & 0x7)
        pad = 0;
    else
        pad = 1;
    if (cont) {
        if (pad)
            *cont++ = 0;
        FUNC0(bn, cont);
    }
    return pad + FUNC2(bn);
}