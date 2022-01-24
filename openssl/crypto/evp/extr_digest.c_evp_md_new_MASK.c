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
struct TYPE_5__ {int refcnt; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 

EVP_MD *FUNC3(void)
{
    EVP_MD *md = FUNC2(sizeof(*md));

    if (md != NULL) {
        md->lock = FUNC0();
        if (md->lock == NULL) {
            FUNC1(md);
            return NULL;
        }
        md->refcnt = 1;
    }
    return md;
}