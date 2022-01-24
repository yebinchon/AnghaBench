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
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_secp521r1 ; 
 int /*<<< orphan*/  NID_sect163r2 ; 

__attribute__((used)) static int FUNC6(void)
{
    int r = 1;
    BIGNUM *secp521r1_field = NULL;
    BIGNUM *sect163r2_field = NULL;
    EC_GROUP *secp521r1_group = NULL;
    EC_GROUP *sect163r2_group = NULL;

    FUNC2(&secp521r1_field,
                "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                "FFFF");


    FUNC2(&sect163r2_field,
                "08000000000000000000000000000000"
                "00000000C9");

    secp521r1_group = FUNC5(NID_secp521r1);
    if (FUNC0(secp521r1_field, FUNC4(secp521r1_group)))
      r = 0;

    # ifndef OPENSSL_NO_EC2M
    sect163r2_group = FUNC5(NID_sect163r2);
    if (FUNC0(sect163r2_field, FUNC4(sect163r2_group)))
      r = 0;
    # endif

    FUNC3(secp521r1_group);
    FUNC3(sect163r2_group);
    FUNC1(secp521r1_field);
    FUNC1(sect163r2_field);
    return r;
}