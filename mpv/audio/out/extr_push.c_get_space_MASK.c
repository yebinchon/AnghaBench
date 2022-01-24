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
struct ao_push_state {int /*<<< orphan*/  lock; } ;
struct ao {struct ao_push_state* api_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ao*) ; 

__attribute__((used)) static int FUNC3(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    FUNC0(&p->lock);
    int space = FUNC2(ao);
    FUNC1(&p->lock);
    return space;
}