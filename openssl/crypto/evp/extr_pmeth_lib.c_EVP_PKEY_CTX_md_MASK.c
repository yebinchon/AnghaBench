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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_EVP_PKEY_CTX_MD ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  EVP_R_INVALID_DIGEST ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(EVP_PKEY_CTX *ctx, int optype, int cmd, const char *md)
{
    const EVP_MD *m;

    if (md == NULL || (m = FUNC1(md)) == NULL) {
        FUNC2(EVP_F_EVP_PKEY_CTX_MD, EVP_R_INVALID_DIGEST);
        return 0;
    }
    return FUNC0(ctx, -1, optype, cmd, 0, (void *)m);
}