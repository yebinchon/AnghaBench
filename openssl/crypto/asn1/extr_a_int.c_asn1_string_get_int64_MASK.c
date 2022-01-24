#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int type; int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_STRING_GET_INT64 ; 
 int /*<<< orphan*/  ASN1_R_WRONG_INTEGER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int V_ASN1_NEG ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(int64_t *pr, const ASN1_STRING *a, int itype)
{
    if (a == NULL) {
        FUNC0(ASN1_F_ASN1_STRING_GET_INT64, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if ((a->type & ~V_ASN1_NEG) != itype) {
        FUNC0(ASN1_F_ASN1_STRING_GET_INT64, ASN1_R_WRONG_INTEGER_TYPE);
        return 0;
    }
    return FUNC1(pr, a->data, a->length, a->type & V_ASN1_NEG);
}