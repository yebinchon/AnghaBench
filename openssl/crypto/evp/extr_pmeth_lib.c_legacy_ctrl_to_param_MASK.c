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

/* Variables and functions */
#define  EVP_PKEY_CTRL_DH_PAD 130 
#define  EVP_PKEY_CTRL_GET_MD 129 
#define  EVP_PKEY_CTRL_MD 128 
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC3(EVP_PKEY_CTX *ctx, int keytype, int optype,
                                int cmd, int p1, void *p2)
{
    switch (cmd) {
#ifndef OPENSSL_NO_DH
    case EVP_PKEY_CTRL_DH_PAD:
        return FUNC1(ctx, p1);
#endif
    case EVP_PKEY_CTRL_MD:
        return FUNC2(ctx, p2);
    case EVP_PKEY_CTRL_GET_MD:
        return FUNC0(ctx, p2);
    }
    return 0;
}