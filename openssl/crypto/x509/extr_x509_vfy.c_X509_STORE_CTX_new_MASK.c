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
typedef  int /*<<< orphan*/  X509_STORE_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  X509_F_X509_STORE_CTX_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509_STORE_CTX *FUNC2(void)
{
    X509_STORE_CTX *ctx = FUNC0(sizeof(*ctx));

    if (ctx == NULL) {
        FUNC1(X509_F_X509_STORE_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    return ctx;
}