#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {scalar_t__ constants; int /*<<< orphan*/  arena; } ;
typedef  TYPE_1__ zend_optimizer_ctx ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zend_optimizer_zval_dtor_wrapper ; 

void FUNC5(zend_optimizer_ctx *ctx, zval *name, zval* value)
{
	zval val;

	if (!ctx->constants) {
		ctx->constants = FUNC2(&ctx->arena, sizeof(HashTable));
		FUNC4(ctx->constants, 16, NULL, zend_optimizer_zval_dtor_wrapper, 0);
	}
	FUNC0(&val, value);
	FUNC3(ctx->constants, FUNC1(name), &val);
}