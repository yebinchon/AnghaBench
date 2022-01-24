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
typedef  int /*<<< orphan*/  ser_context ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

size_t FUNC4(const zval *arr, ser_context *ctx)
{
	int num_elems;

	if (FUNC1(arr) != IS_ARRAY) {
		FUNC2(ctx, "%s", "expected an array here");
		return (size_t)-1;
	}

	num_elems = FUNC3(FUNC0(arr));
	if (num_elems == 0) {
		FUNC2(ctx, "%s", "expected at least one element in this array");
		return (size_t)-1;
	}

	return FUNC3(FUNC0(arr)) * sizeof(int);
}