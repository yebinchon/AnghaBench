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
struct m_profile {int dummy; } ;
struct m_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct m_profile* FUNC1 (struct m_config const*,int /*<<< orphan*/ ) ; 

struct m_profile *FUNC2(const struct m_config *config,
                                        char *name)
{
    return FUNC1(config, FUNC0(name));
}