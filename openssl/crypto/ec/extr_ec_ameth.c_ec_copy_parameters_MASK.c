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
struct TYPE_5__ {int /*<<< orphan*/ * ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY *to, const EVP_PKEY *from)
{
    EC_GROUP *group = FUNC0(FUNC2(from->pkey.ec));

    if (group == NULL)
        return 0;
    if (to->pkey.ec == NULL) {
        to->pkey.ec = FUNC3();
        if (to->pkey.ec == NULL)
            goto err;
    }
    if (FUNC4(to->pkey.ec, group) == 0)
        goto err;
    FUNC1(group);
    return 1;
 err:
    FUNC1(group);
    return 0;
}