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
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_B64_READ_ASN1 ; 
 int /*<<< orphan*/  ASN1_R_DECODE_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 

__attribute__((used)) static ASN1_VALUE *FUNC8(BIO *bio, const ASN1_ITEM *it)
{
    BIO *b64;
    ASN1_VALUE *val;

    if ((b64 = FUNC5(FUNC2())) == NULL) {
        FUNC1(ASN1_F_B64_READ_ASN1, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    bio = FUNC7(b64, bio);
    val = FUNC0(it, bio, NULL);
    if (!val)
        FUNC1(ASN1_F_B64_READ_ASN1, ASN1_R_DECODE_ERROR);
    (void)FUNC3(bio);
    FUNC6(bio);
    FUNC4(b64);
    return val;
}