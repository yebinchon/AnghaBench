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
typedef  int /*<<< orphan*/  mpc_input_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(mpc_input_t *i, int(*cond)(char), char **o) {
  char x = FUNC1(i);
  if (FUNC3(i)) { return 0; }
  return cond(x) ? FUNC2(i, x, o) : FUNC0(i, x);  
}