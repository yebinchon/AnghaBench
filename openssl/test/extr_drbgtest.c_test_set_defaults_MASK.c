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
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAND_DRBG ;

/* Variables and functions */
 int NID_aes_256_ctr ; 
 int NID_sha1 ; 
 int NID_sha256 ; 
 int RAND_DRBG_FLAGS ; 
 int RAND_DRBG_FLAG_CTR_NO_DF ; 
 int RAND_DRBG_FLAG_HMAC ; 
 int RAND_DRBG_FLAG_MASTER ; 
 int RAND_DRBG_FLAG_PRIVATE ; 
 int RAND_DRBG_FLAG_PUBLIC ; 
 int RAND_DRBG_TYPE ; 
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
    RAND_DRBG *master = NULL, *public = NULL, *private = NULL;

           /* Check the default type and flags for master, public and private */
    return FUNC6(master = FUNC0())
           && FUNC6(public = FUNC2())
           && FUNC6(private = FUNC1())
           && FUNC5(master->type, RAND_DRBG_TYPE)
           && FUNC5(master->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_MASTER)
           && FUNC5(public->type, RAND_DRBG_TYPE)
           && FUNC5(public->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PUBLIC)
           && FUNC5(private->type, RAND_DRBG_TYPE)
           && FUNC5(private->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PRIVATE)

           /* change master DRBG and check again */
           && FUNC7(FUNC3(NID_sha256,
                                               RAND_DRBG_FLAG_MASTER))
           && FUNC7(FUNC4(master))
           && FUNC5(master->type, NID_sha256)
           && FUNC5(master->flags, RAND_DRBG_FLAG_MASTER)
           && FUNC5(public->type, RAND_DRBG_TYPE)
           && FUNC5(public->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PUBLIC)
           && FUNC5(private->type, RAND_DRBG_TYPE)
           && FUNC5(private->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PRIVATE)
           /* change private DRBG and check again */
           && FUNC7(FUNC3(NID_sha256,
                        RAND_DRBG_FLAG_PRIVATE|RAND_DRBG_FLAG_HMAC))
           && FUNC7(FUNC4(private))
           && FUNC5(master->type, NID_sha256)
           && FUNC5(master->flags, RAND_DRBG_FLAG_MASTER)
           && FUNC5(public->type, RAND_DRBG_TYPE)
           && FUNC5(public->flags,
                          RAND_DRBG_FLAGS | RAND_DRBG_FLAG_PUBLIC)
           && FUNC5(private->type, NID_sha256)
           && FUNC5(private->flags,
                          RAND_DRBG_FLAG_PRIVATE | RAND_DRBG_FLAG_HMAC)
           /* change public DRBG and check again */
           && FUNC7(FUNC3(NID_sha1,
                                               RAND_DRBG_FLAG_PUBLIC
                                               | RAND_DRBG_FLAG_HMAC))
           && FUNC7(FUNC4(public))
           && FUNC5(master->type, NID_sha256)
           && FUNC5(master->flags, RAND_DRBG_FLAG_MASTER)
           && FUNC5(public->type, NID_sha1)
           && FUNC5(public->flags,
                          RAND_DRBG_FLAG_PUBLIC | RAND_DRBG_FLAG_HMAC)
           && FUNC5(private->type, NID_sha256)
           && FUNC5(private->flags,
                          RAND_DRBG_FLAG_PRIVATE | RAND_DRBG_FLAG_HMAC)
           /* Change DRBG defaults and change public and check again */
           && FUNC7(FUNC3(NID_sha256, 0))
           && FUNC7(FUNC4(public))
           && FUNC5(public->type, NID_sha256)
           && FUNC5(public->flags, RAND_DRBG_FLAG_PUBLIC)

          /* FIPS mode doesn't support CTR DRBG without a derivation function */
#ifndef FIPS_MODE
          /* Change DRBG defaults and change master and check again */
           && FUNC7(FUNC3(NID_aes_256_ctr,
                                               RAND_DRBG_FLAG_CTR_NO_DF))
           && FUNC7(FUNC4(master))
           && FUNC5(master->type, NID_aes_256_ctr)
           && FUNC5(master->flags,
                          RAND_DRBG_FLAG_MASTER|RAND_DRBG_FLAG_CTR_NO_DF)
#endif
           /* Reset back to the standard defaults */
           && FUNC7(FUNC3(RAND_DRBG_TYPE,
                                               RAND_DRBG_FLAGS
                                               | RAND_DRBG_FLAG_MASTER
                                               | RAND_DRBG_FLAG_PUBLIC
                                               | RAND_DRBG_FLAG_PRIVATE))
           && FUNC7(FUNC4(master))
           && FUNC7(FUNC4(public))
           && FUNC7(FUNC4(private));
}