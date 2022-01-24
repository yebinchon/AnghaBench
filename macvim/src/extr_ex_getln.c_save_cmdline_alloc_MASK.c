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
struct cmdline_info {int dummy; } ;
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdline_info*) ; 

char_u *
FUNC2()
{
    struct cmdline_info *p;

    p = (struct cmdline_info *)FUNC0((unsigned)sizeof(struct cmdline_info));
    if (p != NULL)
	FUNC1(p);
    return (char_u *)p;
}