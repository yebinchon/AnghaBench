#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* (* new_func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ OPENSSL_CTX_METHOD ;
typedef  int /*<<< orphan*/  CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *parent_ign, void *ptr_ign,
                                    CRYPTO_EX_DATA *ad, int index,
                                    long argl_ign, void *argp)
{
    const OPENSSL_CTX_METHOD *meth = argp;
    void *ptr = meth->new_func(FUNC1(ad));

    if (ptr != NULL)
        FUNC0(ad, index, ptr);
}