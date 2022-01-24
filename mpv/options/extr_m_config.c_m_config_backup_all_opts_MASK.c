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
struct m_config {int num_opts; int /*<<< orphan*/ * opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_config*,int /*<<< orphan*/ *) ; 

void FUNC1(struct m_config *config)
{
    for (int n = 0; n < config->num_opts; n++)
        FUNC0(config, &config->opts[n]);
}