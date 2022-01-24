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
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_TLC ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,unsigned char const**,long,int /*<<< orphan*/  const*,int,int,char,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(ASN1_VALUE **pval, const unsigned char **in, long len,
                     const ASN1_ITEM *it,
                     int tag, int aclass, char opt, ASN1_TLC *ctx)
{
    int rv;
    rv = FUNC1(pval, in, len, it, tag, aclass, opt, ctx, 0);
    if (rv <= 0)
        FUNC0(pval, it);
    return rv;
}