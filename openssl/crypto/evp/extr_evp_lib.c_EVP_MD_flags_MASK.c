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
struct TYPE_4__ {unsigned long flags; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_FLAGS ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 

unsigned long FUNC2(const EVP_MD *md)
{
    int ok;
    unsigned long v = md->flags;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = FUNC0(OSSL_CIPHER_PARAM_FLAGS, &v);
    ok = FUNC1(md, params);

    return ok != 0 ? v : 0;
}