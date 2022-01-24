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
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_3__ {int /*<<< orphan*/ * hash_algo; } ;
typedef  TYPE_1__ TS_MSG_IMPRINT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_MSG_IMPRINT_SET_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(TS_MSG_IMPRINT *a, X509_ALGOR *alg)
{
    X509_ALGOR *new_alg;

    if (a->hash_algo == alg)
        return 1;
    new_alg = FUNC1(alg);
    if (new_alg == NULL) {
        FUNC0(TS_F_TS_MSG_IMPRINT_SET_ALGO, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC2(a->hash_algo);
    a->hash_algo = new_alg;
    return 1;
}