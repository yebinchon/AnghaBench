#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  use; int /*<<< orphan*/  def; } ;
typedef  TYPE_1__ zend_dfg ;
struct TYPE_6__ {int blocks_count; } ;
typedef  TYPE_2__ zend_cfg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 

void FUNC4(const zend_op_array *op_array, const zend_cfg *cfg, const zend_dfg *dfg)
{
	int j;
	FUNC1(stderr, "\nVariable Liveness for \"");
	FUNC2(op_array);
	FUNC1(stderr, "\"\n");

	for (j = 0; j < cfg->blocks_count; j++) {
		FUNC1(stderr, "  BB%d:\n", j);
		FUNC3(op_array, "def", FUNC0(dfg->def, dfg->size, j));
		FUNC3(op_array, "use", FUNC0(dfg->use, dfg->size, j));
		FUNC3(op_array, "in ", FUNC0(dfg->in,  dfg->size, j));
		FUNC3(op_array, "out", FUNC0(dfg->out, dfg->size, j));
	}
}