#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pkey; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tbuf; } ;
typedef  TYPE_1__ RSA_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_F_SETUP_TBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(RSA_PKEY_CTX *ctx, EVP_PKEY_CTX *pk)
{
    if (ctx->tbuf != NULL)
        return 1;
    if ((ctx->tbuf = FUNC1(FUNC0(pk->pkey))) == NULL) {
        FUNC2(RSA_F_SETUP_TBUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}