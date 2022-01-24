#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  TYPE_1__ ASN1_INTEGER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  V_ASN1_NEG ; 
 int /*<<< orphan*/  X509V3_F_S2I_ASN1_INTEGER ; 
 int /*<<< orphan*/  X509V3_R_BN_DEC2BN_ERROR ; 
 int /*<<< orphan*/  X509V3_R_BN_TO_ASN1_INTEGER_ERROR ; 
 int /*<<< orphan*/  X509V3_R_INVALID_NULL_VALUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ASN1_INTEGER *FUNC7(X509V3_EXT_METHOD *method, const char *value)
{
    BIGNUM *bn = NULL;
    ASN1_INTEGER *aint;
    int isneg, ishex;
    int ret;
    if (value == NULL) {
        FUNC6(X509V3_F_S2I_ASN1_INTEGER, X509V3_R_INVALID_NULL_VALUE);
        return NULL;
    }
    bn = FUNC4();
    if (bn == NULL) {
        FUNC6(X509V3_F_S2I_ASN1_INTEGER, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    if (value[0] == '-') {
        value++;
        isneg = 1;
    } else
        isneg = 0;

    if (value[0] == '0' && ((value[1] == 'x') || (value[1] == 'X'))) {
        value += 2;
        ishex = 1;
    } else
        ishex = 0;

    if (ishex)
        ret = FUNC2(&bn, value);
    else
        ret = FUNC0(&bn, value);

    if (!ret || value[ret]) {
        FUNC1(bn);
        FUNC6(X509V3_F_S2I_ASN1_INTEGER, X509V3_R_BN_DEC2BN_ERROR);
        return NULL;
    }

    if (isneg && FUNC3(bn))
        isneg = 0;

    aint = FUNC5(bn, NULL);
    FUNC1(bn);
    if (!aint) {
        FUNC6(X509V3_F_S2I_ASN1_INTEGER,
                  X509V3_R_BN_TO_ASN1_INTEGER_ERROR);
        return NULL;
    }
    if (isneg)
        aint->type |= V_ASN1_NEG;
    return aint;
}