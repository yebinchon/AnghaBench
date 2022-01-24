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
struct TYPE_3__ {int /*<<< orphan*/  private_drbg; int /*<<< orphan*/  public_drbg; } ;
typedef  int /*<<< orphan*/  RAND_DRBG ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_1__ DRBG_GLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *arg)
{
    OPENSSL_CTX *ctx = arg;
    DRBG_GLOBAL *dgbl = FUNC3(ctx);
    RAND_DRBG *drbg;

    if (dgbl == NULL)
        return;
    drbg = FUNC0(&dgbl->public_drbg);
    FUNC1(&dgbl->public_drbg, NULL);
    FUNC2(drbg);

    drbg = FUNC0(&dgbl->private_drbg);
    FUNC1(&dgbl->private_drbg, NULL);
    FUNC2(drbg);
}