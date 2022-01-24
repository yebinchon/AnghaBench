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
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 

int FUNC6(BIO *bio, const ASN1_INTEGER *num)
{
    BIGNUM *num_bn;
    int result = 0;
    char *hex;

    num_bn = FUNC0(num, NULL);
    if (num_bn == NULL)
        return -1;
    if ((hex = FUNC2(num_bn))) {
        result = FUNC1(bio, "0x", 2) > 0;
        result = result && FUNC1(bio, hex, FUNC5(hex)) > 0;
        FUNC4(hex);
    }
    FUNC3(num_bn);

    return result;
}