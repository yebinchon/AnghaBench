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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  ge_p3 ;
typedef  int /*<<< orphan*/  az ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int const*,int,int*) ; 
 int SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 

void FUNC4(uint8_t out_public_key[32],
                                 const uint8_t private_key[32])
{
    uint8_t az[SHA512_DIGEST_LENGTH];
    ge_p3 A;

    FUNC1(private_key, 32, az);

    az[0] &= 248;
    az[31] &= 63;
    az[31] |= 64;

    FUNC3(&A, az);
    FUNC2(out_public_key, &A);

    FUNC0(az, sizeof(az));
}