#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char* current_opstr; scalar_t__ user; } ;
struct TYPE_15__ {int /*<<< orphan*/ * cur; int /*<<< orphan*/  flow; int /*<<< orphan*/  idx; int /*<<< orphan*/ * old; } ;
struct TYPE_14__ {int type; int /*<<< orphan*/  content; } ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  TYPE_1__ RAnalEsilDFGNode ;
typedef  TYPE_2__ RAnalEsilDFG ;
typedef  TYPE_3__ RAnalEsil ;

/* Variables and functions */
 int R_ANAL_ESIL_DFG_BLOCK_CONST ; 
 int R_ANAL_ESIL_DFG_BLOCK_GENERATIVE ; 
 int R_ANAL_ESIL_DFG_BLOCK_RESULT ; 
 int R_ANAL_ESIL_DFG_BLOCK_VAR ; 
 int R_ANAL_ESIL_PARM_INVALID ; 
 int const R_ANAL_ESIL_PARM_NUM ; 
 int const R_ANAL_ESIL_PARM_REG ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,char*) ; 
 void* FUNC6 (TYPE_3__*,char*) ; 
 char* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static bool FUNC11(RAnalEsil *esil, const bool use_origin) {
	const char *op_string = esil->current_opstr;
	RAnalEsilDFG *edf = (RAnalEsilDFG *)esil->user;
	char *dst = FUNC7 (esil);
	char *src = FUNC7 (esil);

	if (!src || !dst) {
		FUNC4 (dst);
		FUNC4 (src);
		return false;
	}

	int dst_type = FUNC6 (esil, dst);
	if (dst_type == R_ANAL_ESIL_PARM_INVALID) {
		FUNC4 (dst);
		FUNC4 (src);
		return false;
	}

	const int src_type = FUNC6 (esil, src);
	RGraphNode *src_node = NULL;
	if (src_type == R_ANAL_ESIL_PARM_REG) {
		src_node = FUNC1 (edf, src);
	} else if (src_type == R_ANAL_ESIL_PARM_NUM) {
		RGraphNode *n_value = FUNC9 (edf->flow, FUNC5 (edf, src));
		RAnalEsilDFGNode *ec_node = FUNC5 (edf, src);
		ec_node->type = R_ANAL_ESIL_DFG_BLOCK_CONST;
		FUNC10 (ec_node->content, ":const_%d", edf->idx++);
		src_node = FUNC9 (edf->flow, ec_node);
		FUNC8 (edf->flow, n_value, src_node);
	} else {
		src_node = FUNC3 (edf, src);
	}

	RGraphNode *dst_node = use_origin ? FUNC0 (edf, dst) : FUNC1 (edf, dst);
	RGraphNode *old_dst_node = dst_node;

	if (!src_node || !dst_node) {
		FUNC4 (src);
		FUNC4 (dst);
		return false;
	}

	RAnalEsilDFGNode *eop_node = FUNC5 (edf, src);
	FUNC10 (eop_node->content, ",%s,%s", dst, op_string);
	eop_node->type = R_ANAL_ESIL_DFG_BLOCK_GENERATIVE;
	FUNC4 (src);

	RGraphNode *op_node = FUNC9 (edf->flow, eop_node);
	FUNC8 (edf->flow, dst_node, op_node);
	FUNC8 (edf->flow, src_node, op_node);
	edf->old = old_dst_node;
	RAnalEsilDFGNode *result = FUNC5 (edf, dst);
	result->type = R_ANAL_ESIL_DFG_BLOCK_RESULT | R_ANAL_ESIL_DFG_BLOCK_VAR;

	FUNC10 (result->content, ":var_%d", edf->idx++);
	dst_node = FUNC9 (edf->flow, result);
	FUNC8 (edf->flow, op_node, dst_node);
	FUNC2 (edf, dst, dst_node);
	edf->cur = dst_node;
	FUNC4 (dst);
	return true;
}