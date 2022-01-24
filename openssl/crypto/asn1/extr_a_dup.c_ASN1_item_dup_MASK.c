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
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_ITEM_DUP ; 
 void* FUNC0 (int /*<<< orphan*/ *,unsigned char const**,long,int /*<<< orphan*/  const*) ; 
 long FUNC1 (void const*,unsigned char**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

void *FUNC4(const ASN1_ITEM *it, const void *x)
{
    unsigned char *b = NULL;
    const unsigned char *p;
    long i;
    void *ret;

    if (x == NULL)
        return NULL;

    i = FUNC1(x, &b, it);
    if (b == NULL) {
        FUNC2(ASN1_F_ASN1_ITEM_DUP, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    p = b;
    ret = FUNC0(NULL, &p, i, it);
    FUNC3(b);
    return ret;
}