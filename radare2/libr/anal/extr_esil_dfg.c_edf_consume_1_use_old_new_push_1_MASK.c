#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ user; } ;
struct TYPE_23__ {int /*<<< orphan*/  flow; int /*<<< orphan*/  idx; TYPE_1__* old; TYPE_1__* cur; } ;
struct TYPE_22__ {int /*<<< orphan*/  content; int /*<<< orphan*/  type; } ;
struct TYPE_21__ {scalar_t__ data; } ;
typedef  TYPE_1__ RGraphNode ;
typedef  TYPE_2__ RAnalEsilDFGNode ;
typedef  TYPE_3__ RAnalEsilDFG ;
typedef  TYPE_4__ RAnalEsil ;
typedef  int /*<<< orphan*/  (* AddConstraintStringConsume1UseOldNewCB ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_ESIL_DFG_BLOCK_CONST ; 
 int /*<<< orphan*/  R_ANAL_ESIL_DFG_BLOCK_GENERATIVE ; 
 int /*<<< orphan*/  R_ANAL_ESIL_DFG_BLOCK_RESULT ; 
 int const R_ANAL_ESIL_PARM_NUM ; 
 int const R_ANAL_ESIL_PARM_REG ; 
 TYPE_1__* FUNC0 (TYPE_3__*,char*) ; 
 TYPE_1__* FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,char*) ; 
 int FUNC5 (TYPE_4__*,char*) ; 
 char* FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC12(RAnalEsil *esil, const char *op_string, AddConstraintStringConsume1UseOldNewCB cb) {
	RAnalEsilDFG *edf = (RAnalEsilDFG *)esil->user;
	char *src = FUNC6 (esil);

	if (!src) {
		return false;
	}
	RAnalEsilDFGNode *eop_node = FUNC4 (edf, src);
#if 0
	eop_node->type = R_ANAL_ESIL_DFG_BLOCK_GENERATIVE;
#endif
	FUNC10 (eop_node->content, ",%s", op_string);
	RGraphNode *op_node = FUNC9 (edf->flow, eop_node);
	const int src_type = FUNC5 (esil, src);
	RGraphNode *src_node = NULL;
	if (src_type == R_ANAL_ESIL_PARM_REG) {
		src_node = FUNC0 (edf, src);
	} else if (src_type == R_ANAL_ESIL_PARM_NUM) {
		RGraphNode *n_value = FUNC9 (edf->flow, FUNC4 (edf, src));
		RAnalEsilDFGNode *ec_node = FUNC4 (edf, src);
		ec_node->type = R_ANAL_ESIL_DFG_BLOCK_CONST;
		FUNC10 (ec_node->content, ":const_%d", edf->idx++);
		src_node = FUNC9 (edf->flow, ec_node);
		FUNC8 (edf->flow, n_value, src_node);
	} else {
		src_node = FUNC1 (edf, src);
	}
	FUNC3 (src);

	FUNC8 (edf->flow, src_node, op_node);

	RGraphNode *latest_new = edf->cur;
	RGraphNode *latest_old = edf->old;
	RAnalEsilDFGNode *result = FUNC4 (edf, "result_");
	result->type = R_ANAL_ESIL_DFG_BLOCK_RESULT; // propagate type here
	FUNC10 (result->content, "%d", edf->idx++);
	if (cb) {
		RAnalEsilDFGNode *e_src_node = (RAnalEsilDFGNode *)src_node->data;
		RAnalEsilDFGNode *e_new_node = (RAnalEsilDFGNode *)latest_new->data;
		RAnalEsilDFGNode *e_old_node = (RAnalEsilDFGNode *)latest_old->data;
		cb (result->content, FUNC11 (e_src_node->content),
			FUNC11 (e_new_node->content), FUNC11 (e_old_node->content));
	}
	RGraphNode *result_node = FUNC9 (edf->flow, result);
	FUNC2 (edf, FUNC11 (result->content), result_node);
	FUNC8 (edf->flow, latest_new, op_node);
	FUNC8 (edf->flow, latest_old, op_node);
	FUNC8 (edf->flow, op_node, result_node);
	return FUNC7 (esil, FUNC11 (result->content));
}