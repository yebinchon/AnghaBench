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
 int FUNC0 (char const**,char,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2 (const char **p, char delimiter, int *valid, int level,
	 int print_errors)
{
  int check = 1;
  int result;
  if (valid)
    *valid = 1;
  result = FUNC0 (p, delimiter, valid, level, &check, print_errors);
  if (print_errors && (!valid || *valid) && check)
    FUNC1 (0, "expression fully enclosed in parenthesis\n");
  return result;
}