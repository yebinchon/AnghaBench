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
struct m_profile {scalar_t__ num_opts; int /*<<< orphan*/  name; } ;
struct m_config {int dummy; } ;

/* Variables and functions */
 struct m_profile* FUNC0 (struct m_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct m_config*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct m_config *config, int flags)
{
    struct m_profile *p = FUNC0(config, NULL);
    FUNC1(config, p->name, flags);
    p->num_opts = 0;
}