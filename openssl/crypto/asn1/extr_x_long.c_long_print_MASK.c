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
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_PCTX ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,long) ; 
 int /*<<< orphan*/  FUNC2 (long*,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(BIO *out, const ASN1_VALUE **pval, const ASN1_ITEM *it,
                      int indent, const ASN1_PCTX *pctx)
{
    long l;

    FUNC2(&l, pval, FUNC1(*pval, l));
    return FUNC0(out, "%ld\n", l);
}