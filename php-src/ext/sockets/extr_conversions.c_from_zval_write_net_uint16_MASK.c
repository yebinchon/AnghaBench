#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {scalar_t__ has_error; } ;
struct TYPE_7__ {TYPE_1__ err; } ;
typedef  TYPE_2__ ser_context ;
typedef  int /*<<< orphan*/  ival ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(const zval *arr_value, char *field, ser_context *ctx)
{
	zend_long lval;
	uint16_t ival;

	lval = FUNC1(arr_value, ctx);
	if (ctx->err.has_error) {
		return;
	}

	if (lval < 0 || lval > 0xFFFF) {
		FUNC0(ctx, "%s", "given PHP integer is out of bounds "
				"for an unsigned 16-bit integer");
		return;
	}

	ival = FUNC2((uint16_t)lval);
	FUNC3(field, &ival, sizeof(ival));
}