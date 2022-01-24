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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  from_zval_write_fd_array_aux ; 

void FUNC3(const zval *arr, char *int_arr, ser_context *ctx)
{
	if (FUNC0(arr) != IS_ARRAY) {
		FUNC1(ctx, "%s", "expected an array here");
		return;
	}

   FUNC2(arr, &from_zval_write_fd_array_aux, (void**)&int_arr, ctx);
}