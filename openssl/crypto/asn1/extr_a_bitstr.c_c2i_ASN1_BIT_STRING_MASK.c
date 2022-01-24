#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int length; unsigned char* data; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  ASN1_F_C2I_ASN1_BIT_STRING ; 
 int ASN1_R_INVALID_BIT_STRING_BITS_LEFT ; 
 int ASN1_R_STRING_TOO_LONG ; 
 int ASN1_R_STRING_TOO_SHORT ; 
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int ERR_R_MALLOC_FAILURE ; 
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int) ; 
 int /*<<< orphan*/  V_ASN1_BIT_STRING ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,int) ; 

ASN1_BIT_STRING *FUNC6(ASN1_BIT_STRING **a,
                                     const unsigned char **pp, long len)
{
    ASN1_BIT_STRING *ret = NULL;
    const unsigned char *p;
    unsigned char *s;
    int i;

    if (len < 1) {
        i = ASN1_R_STRING_TOO_SHORT;
        goto err;
    }

    if (len > INT_MAX) {
        i = ASN1_R_STRING_TOO_LONG;
        goto err;
    }

    if ((a == NULL) || ((*a) == NULL)) {
        if ((ret = FUNC1()) == NULL)
            return NULL;
    } else
        ret = (*a);

    p = *pp;
    i = *(p++);
    if (i > 7) {
        i = ASN1_R_INVALID_BIT_STRING_BITS_LEFT;
        goto err;
    }
    /*
     * We do this to preserve the settings.  If we modify the settings, via
     * the _set_bit function, we will recalculate on output
     */
    ret->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07); /* clear */
    ret->flags |= (ASN1_STRING_FLAG_BITS_LEFT | i); /* set */

    if (len-- > 1) {            /* using one because of the bits left byte */
        s = FUNC4((int)len);
        if (s == NULL) {
            i = ERR_R_MALLOC_FAILURE;
            goto err;
        }
        FUNC5(s, p, (int)len);
        s[len - 1] &= (0xff << i);
        p += len;
    } else
        s = NULL;

    ret->length = (int)len;
    FUNC3(ret->data);
    ret->data = s;
    ret->type = V_ASN1_BIT_STRING;
    if (a != NULL)
        (*a) = ret;
    *pp = p;
    return ret;
 err:
    FUNC2(ASN1_F_C2I_ASN1_BIT_STRING, i);
    if ((a == NULL) || (*a != ret))
        FUNC0(ret);
    return NULL;
}