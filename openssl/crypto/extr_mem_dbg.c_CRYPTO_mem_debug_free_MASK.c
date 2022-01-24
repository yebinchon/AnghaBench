#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* addr; } ;
typedef  TYPE_1__ MEM ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_DISABLE ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * mh ; 

void FUNC4(void *addr, int before_p,
        const char *file, int line)
{
    MEM m, *mp;

    switch (before_p) {
    case 0:
        if (addr == NULL)
            break;

        if (FUNC3() && (mh != NULL)) {
            FUNC0(CRYPTO_MEM_CHECK_DISABLE);
            m.addr = addr;
            mp = FUNC2(mh, &m);
            FUNC1(mp);
            FUNC0(CRYPTO_MEM_CHECK_ENABLE);
        }
        break;
    case 1:
        break;
    }
}