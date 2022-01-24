#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ user; } ;
struct TYPE_17__ {int /*<<< orphan*/  flow; int /*<<< orphan*/  idx; TYPE_1__* cur; } ;
struct TYPE_16__ {int /*<<< orphan*/  content; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {scalar_t__ data; } ;
typedef  TYPE_1__ RGraphNode ;
typedef  TYPE_2__ RAnalEsilDFGNode ;
typedef  TYPE_3__ RAnalEsilDFG ;
typedef  TYPE_4__ RAnalEsil ;
typedef  int /*<<< orphan*/  (* AddConstraintStringUseNewCB ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_ESIL_DFG_BLOCK_RESULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,char const*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(RAnalEsil *esil, const char *op_string, AddConstraintStringUseNewCB cb) {
	RAnalEsilDFG *edf = (RAnalEsilDFG *)esil->user;
	RGraphNode *op_node = FUNC4 (edf->flow, FUNC1 (edf, op_string));
	RGraphNode *latest_new = edf->cur;
	if (!latest_new) {
		return 0;
	}
	RAnalEsilDFGNode *result = FUNC1 (edf, "result_");
	result->type = R_ANAL_ESIL_DFG_BLOCK_RESULT; // is this generative?
	FUNC5 (result->content, "%d", edf->idx++);
	if (cb) {
		RAnalEsilDFGNode *e_new_node = (RAnalEsilDFGNode *)latest_new->data;
		cb (result->content, FUNC6 (e_new_node->content));
	}
	RGraphNode *result_node = FUNC4 (edf->flow, result);
	FUNC0 (edf, FUNC6 (result->content), result_node);
	FUNC3 (edf->flow, latest_new, op_node);
	FUNC3 (edf->flow, op_node, result_node);
	return FUNC2 (esil, FUNC6 (result->content));
}