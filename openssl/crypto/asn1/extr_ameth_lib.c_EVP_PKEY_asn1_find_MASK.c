#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pkey_flags; int pkey_base_id; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int ASN1_PKEY_ALIAS ; 
 TYPE_1__ const* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 

const EVP_PKEY_ASN1_METHOD *FUNC3(ENGINE **pe, int type)
{
    const EVP_PKEY_ASN1_METHOD *t;

    for (;;) {
        t = FUNC2(type);
        if (!t || !(t->pkey_flags & ASN1_PKEY_ALIAS))
            break;
        type = t->pkey_base_id;
    }
    if (pe) {
#ifndef OPENSSL_NO_ENGINE
        ENGINE *e;
        /* type will contain the final unaliased type */
        e = FUNC1(type);
        if (e) {
            *pe = e;
            return FUNC0(e, type);
        }
#endif
        *pe = NULL;
    }
    return t;
}