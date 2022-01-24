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
struct imagetag_cmdline_params {int dummy; } ;
struct gengetopt_args_info {int dummy; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gengetopt_args_info*) ; 
 int FUNC2 (int,char**,struct gengetopt_args_info*,struct imagetag_cmdline_params*,int /*<<< orphan*/ ) ; 

int
FUNC3 (int argc, char **argv, struct gengetopt_args_info *args_info,
                   struct imagetag_cmdline_params *params)
{
  int result;
  result = FUNC2 (argc, argv, args_info, params, 0);

  if (result == EXIT_FAILURE)
    {
      FUNC1 (args_info);
      FUNC0 (EXIT_FAILURE);
    }
  
  return result;
}