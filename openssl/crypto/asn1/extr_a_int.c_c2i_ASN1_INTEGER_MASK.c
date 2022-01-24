#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_C2I_ASN1_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  V_ASN1_INTEGER ; 
 int /*<<< orphan*/  V_ASN1_NEG ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int*,unsigned char const*,long) ; 

ASN1_INTEGER *FUNC5(ASN1_INTEGER **a, const unsigned char **pp,
                               long len)
{
    ASN1_INTEGER *ret = NULL;
    size_t r;
    int neg;

    r = FUNC4(NULL, NULL, *pp, len);

    if (r == 0)
        return NULL;

    if ((a == NULL) || ((*a) == NULL)) {
        ret = FUNC1();
        if (ret == NULL)
            return NULL;
        ret->type = V_ASN1_INTEGER;
    } else
        ret = *a;

    if (FUNC2(ret, NULL, r) == 0)
        goto err;

    FUNC4(ret->data, &neg, *pp, len);

    if (neg)
        ret->type |= V_ASN1_NEG;

    *pp += len;
    if (a != NULL)
        (*a) = ret;
    return ret;
 err:
    FUNC3(ASN1_F_C2I_ASN1_INTEGER, ERR_R_MALLOC_FAILURE);
    if ((a == NULL) || (*a != ret))
        FUNC0(ret);
    return NULL;
}