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
struct TYPE_7__ {int pkey_id; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 TYPE_1__** FUNC0 (TYPE_1__ const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ app_methods ; 
 int FUNC2 (scalar_t__,TYPE_1__*) ; 
 TYPE_1__ const* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  standard_methods ; 

__attribute__((used)) static const EVP_PKEY_ASN1_METHOD *FUNC4(int type)
{
    EVP_PKEY_ASN1_METHOD tmp;
    const EVP_PKEY_ASN1_METHOD *t = &tmp, **ret;

    tmp.pkey_id = type;
    if (app_methods) {
        int idx;
        idx = FUNC2(app_methods, &tmp);
        if (idx >= 0)
            return FUNC3(app_methods, idx);
    }
    ret = FUNC0(&t, standard_methods, FUNC1(standard_methods));
    if (ret == NULL || *ret == NULL)
        return NULL;
    return *ret;
}