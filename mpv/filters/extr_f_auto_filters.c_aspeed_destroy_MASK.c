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
struct mp_filter {struct aspeed_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  filter; } ;
struct aspeed_priv {TYPE_1__ sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct mp_filter *f)
{
    struct aspeed_priv *p = f->priv;

    FUNC1(&p->sub);
    FUNC0(&p->sub.filter);
}