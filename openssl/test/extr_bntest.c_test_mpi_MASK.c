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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  scratch ;
struct TYPE_3__ {int /*<<< orphan*/  mpi_len; int /*<<< orphan*/  mpi; int /*<<< orphan*/  base10; } ;
typedef  TYPE_1__ MPITEST ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* kMPITests ; 

__attribute__((used)) static int FUNC11(int i)
{
    uint8_t scratch[8];
    const MPITEST *test = &kMPITests[i];
    size_t mpi_len, mpi_len2;
    BIGNUM *bn = NULL;
    BIGNUM *bn2 = NULL;
    int st = 0;

    if (!FUNC7(bn = FUNC4())
            || !FUNC10(FUNC0(&bn, test->base10)))
        goto err;
    mpi_len = FUNC1(bn, NULL);
    if (!FUNC9(mpi_len, sizeof(scratch)))
        goto err;

    if (!FUNC8(mpi_len2 = FUNC1(bn, scratch), mpi_len)
            || !FUNC6(test->mpi, test->mpi_len, scratch, mpi_len))
        goto err;

    if (!FUNC7(bn2 = FUNC3(scratch, mpi_len, NULL)))
        goto err;

    if (!FUNC5(bn, bn2)) {
        FUNC2(bn2);
        goto err;
    }
    FUNC2(bn2);

    st = 1;
 err:
    FUNC2(bn);
    return st;
}