#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* dsa; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
struct TYPE_7__ {int /*<<< orphan*/  g; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
typedef  TYPE_3__ EVP_PKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const EVP_PKEY *a, const EVP_PKEY *b)
{
    if (FUNC0(a->pkey.dsa->p, b->pkey.dsa->p) ||
        FUNC0(a->pkey.dsa->q, b->pkey.dsa->q) ||
        FUNC0(a->pkey.dsa->g, b->pkey.dsa->g))
        return 0;
    else
        return 1;
}