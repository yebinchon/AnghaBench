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
struct priv {int activated; TYPE_1__* opts; int /*<<< orphan*/  client; } ;
struct ao {struct priv* priv; } ;
struct TYPE_2__ {scalar_t__ connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ao *ao)
{
    struct priv *p = ao->priv;
    if (!p->activated) {
        p->activated = true;

        if (FUNC2(p->client))
            FUNC0(ao, "activate failed\n");

        if (p->opts->connect)
            FUNC1(ao);
    }
}