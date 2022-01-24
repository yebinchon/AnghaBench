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
struct ud {int (* inp_hook ) (struct ud*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ud*) ; 

void 
FUNC1(register struct ud* u, int (*hook)(struct ud*))
{
  FUNC0(u);
  u->inp_hook = hook;
}