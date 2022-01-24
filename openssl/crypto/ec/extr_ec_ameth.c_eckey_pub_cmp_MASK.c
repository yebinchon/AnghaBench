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
struct TYPE_5__ {int /*<<< orphan*/  ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const EVP_PKEY *a, const EVP_PKEY *b)
{
    int r;
    const EC_GROUP *group = FUNC0(b->pkey.ec);
    const EC_POINT *pa = FUNC1(a->pkey.ec),
        *pb = FUNC1(b->pkey.ec);
    if (group == NULL || pa == NULL || pb == NULL)
        return -2;
    r = FUNC2(group, pa, pb, NULL);
    if (r == 0)
        return 1;
    if (r == 1)
        return 0;
    return -2;
}