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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cv ; 
 char** error_string ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shared ; 

void *
FUNC5(void * arg)
{
  int result = 0;

  FUNC0(FUNC3(&mutex) == 0);
  shared++;
  FUNC0(FUNC4(&mutex) == 0);

  if ((result = FUNC2(&cv)) != 0)
    {
      FUNC1("Error = %s\n", error_string[result]);
    }
  FUNC0(result == 0);


  return (void *) 0;
}