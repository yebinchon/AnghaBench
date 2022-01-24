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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  enum_func_status ;

/* Variables and functions */
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  PASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int) ; 

__attribute__((used)) static enum_func_status
FUNC2(zval ** copies, zval * original, unsigned int param_count, unsigned int current)
{
	if (!*copies) {
		*copies = FUNC1(param_count, sizeof(zval));
	}
	if (*copies) {
		FUNC0(&(*copies)[current], original);
		return PASS;
	}
	return FAIL;
}