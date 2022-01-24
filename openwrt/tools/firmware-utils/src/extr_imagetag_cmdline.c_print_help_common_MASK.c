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
 char* gengetopt_args_info_description ; 
 char* gengetopt_args_info_purpose ; 
 char* gengetopt_args_info_usage ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void) {
  FUNC0 ();

  if (FUNC2(gengetopt_args_info_purpose) > 0)
    FUNC1("\n%s\n", gengetopt_args_info_purpose);

  if (FUNC2(gengetopt_args_info_usage) > 0)
    FUNC1("\n%s\n", gengetopt_args_info_usage);

  FUNC1("\n");

  if (FUNC2(gengetopt_args_info_description) > 0)
    FUNC1("%s\n\n", gengetopt_args_info_description);
}