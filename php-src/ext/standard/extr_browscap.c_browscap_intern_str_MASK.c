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
typedef  int /*<<< orphan*/  zend_string ;
typedef  scalar_t__ zend_bool ;
struct TYPE_3__ {int /*<<< orphan*/  str_interned; } ;
typedef  TYPE_1__ browscap_parser_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_string *FUNC5(
		browscap_parser_ctx *ctx, zend_string *str, zend_bool persistent) {
	zend_string *interned = FUNC1(&ctx->str_interned, str);
	if (interned) {
		FUNC3(interned);
	} else {
		interned = FUNC4(str);
		if (persistent) {
			interned = FUNC2(str);
		}
		FUNC0(&ctx->str_interned, interned, interned);
	}

	return interned;
}