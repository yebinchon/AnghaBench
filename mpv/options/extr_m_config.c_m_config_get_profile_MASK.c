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
struct m_profile {int /*<<< orphan*/  name; struct m_profile* next; } ;
struct m_config {struct m_profile* profiles; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct m_profile *FUNC1(const struct m_config *config, bstr name)
{
    for (struct m_profile *p = config->profiles; p; p = p->next) {
        if (FUNC0(name, p->name))
            return p;
    }
    return NULL;
}