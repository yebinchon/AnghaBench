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
struct lwan_var_descriptor {int dummy; } ;
struct lwan_tpl {int dummy; } ;

/* Variables and functions */
 struct lwan_tpl* FUNC0 (char const*,struct lwan_var_descriptor const*,int /*<<< orphan*/ ) ; 

struct lwan_tpl *
FUNC1(const char *string,
                        const struct lwan_var_descriptor *descriptor)
{
    return FUNC0(string, descriptor, 0);
}