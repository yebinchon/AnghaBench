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
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 double FUNC0 (void const*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,double*) ; 

__attribute__((used)) static char *FUNC2(const m_option_t *opt, const void *val)
{
    double tmp = FUNC0(val);
    return FUNC1(opt, &tmp);
}