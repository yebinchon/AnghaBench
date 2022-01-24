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
struct TYPE_3__ {struct TYPE_3__* buf; int /*<<< orphan*/  op_array; } ;
typedef  TYPE_1__ phpdbg_file_source ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(zval *data) /* {{{ */
{
	phpdbg_file_source *source = (phpdbg_file_source *) FUNC0(data);
	FUNC1(&source->op_array);
	if (source->buf) {
		FUNC2(source->buf);
	}
	FUNC2(source);
}