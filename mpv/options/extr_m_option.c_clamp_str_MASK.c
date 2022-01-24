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
struct TYPE_3__ {int flags; int min; int max; } ;
typedef  TYPE_1__ m_option_t ;

/* Variables and functions */
 int M_OPT_MAX ; 
 int M_OPT_MIN ; 
 int M_OPT_OUT_OF_RANGE ; 
 char* FUNC0 (void*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(const m_option_t *opt, void *val)
{
    char *v = FUNC0(val);
    int len = v ? FUNC1(v) : 0;
    if ((opt->flags & M_OPT_MIN) && (len < opt->min))
        return M_OPT_OUT_OF_RANGE;
    if ((opt->flags & M_OPT_MAX) && (len > opt->max))
        return M_OPT_OUT_OF_RANGE;
    return 0;
}