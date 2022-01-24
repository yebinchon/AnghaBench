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

/* Variables and functions */
 char** gengetopt_args_info_help ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void
FUNC2 (void)
{
  int i = 0;
  FUNC0();
  while (gengetopt_args_info_help[i])
    FUNC1("%s\n", gengetopt_args_info_help[i++]);
}