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
struct TYPE_4__ {int /*<<< orphan*/  perslen; int /*<<< orphan*/  pers; } ;
typedef  int /*<<< orphan*/  TEST_CTX ;
typedef  int /*<<< orphan*/  RAND_DRBG ;
typedef  TYPE_1__ DRBG_SELFTEST_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(RAND_DRBG *drbg, DRBG_SELFTEST_DATA *td,
                       TEST_CTX *t)
{
    if (!FUNC1(FUNC2(drbg, td, t))
            || !FUNC1(FUNC0(drbg, td->pers, td->perslen)))
        return 0;
    return 1;
}