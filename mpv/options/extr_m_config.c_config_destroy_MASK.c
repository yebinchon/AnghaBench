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
struct m_config {TYPE_1__* shadow; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ num_listeners; int /*<<< orphan*/  lock; struct TYPE_2__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct m_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(void *p)
{
    struct m_config *config = p;
    FUNC1(config);

    FUNC3(config->data);

    if (config->shadow) {
        // must all have been unregistered
        FUNC0(config->shadow->num_listeners == 0);
        FUNC3(config->shadow->data);
        FUNC2(&config->shadow->lock);
        FUNC3(config->shadow);
    }
}