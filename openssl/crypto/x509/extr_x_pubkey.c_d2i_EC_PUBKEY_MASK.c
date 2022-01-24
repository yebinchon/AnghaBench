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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned char const**,long) ; 

EC_KEY *FUNC4(EC_KEY **a, const unsigned char **pp, long length)
{
    EVP_PKEY *pkey;
    EC_KEY *key;
    const unsigned char *q;

    q = *pp;
    pkey = FUNC3(NULL, &q, length);
    if (pkey == NULL)
        return NULL;
    key = FUNC2(pkey);
    FUNC1(pkey);
    if (key == NULL)
        return NULL;
    *pp = q;
    if (a != NULL) {
        FUNC0(*a);
        *a = key;
    }
    return key;
}