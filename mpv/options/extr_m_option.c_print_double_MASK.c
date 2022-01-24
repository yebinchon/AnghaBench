#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ m_option_t ;

/* Variables and functions */
 int M_OPT_DEFAULT_NAN ; 
 double FUNC0 (void const*) ; 
 scalar_t__ FUNC1 (double) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,double) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char *FUNC4(const m_option_t *opt, const void *val)
{
    double f = FUNC0(val);
    if (FUNC1(f) && (opt->flags & M_OPT_DEFAULT_NAN))
        return FUNC3(NULL, "default");
    return FUNC2(NULL, "%f", f);
}