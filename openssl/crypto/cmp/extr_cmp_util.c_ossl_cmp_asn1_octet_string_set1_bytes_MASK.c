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
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(ASN1_OCTET_STRING **tgt,
                                          const unsigned char *bytes, int len)
{
    ASN1_OCTET_STRING *new = NULL;

    if (tgt == NULL) {
        FUNC3(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }
    if (bytes != NULL) {
        if ((new =  FUNC1()) == NULL
                || !(FUNC2(new, bytes, len))) {
            FUNC0(new);
            return 0;
        }
    }

    FUNC0(*tgt);
    *tgt = new;
    return 1;
}