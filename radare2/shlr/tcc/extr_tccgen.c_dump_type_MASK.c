#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int t; TYPE_1__* ref; } ;
struct TYPE_4__ {int asm_label; int /*<<< orphan*/  r; int /*<<< orphan*/  v; } ;
typedef  TYPE_2__ CType ;

/* Variables and functions */
 int VT_BTYPE ; 
#define  VT_ENUM 135 
#define  VT_INT16 134 
#define  VT_INT32 133 
#define  VT_INT64 132 
#define  VT_INT8 131 
#define  VT_PTR 130 
#define  VT_STRUCT 129 
#define  VT_UNION 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(CType *type, int depth) {
	if (depth <= 0) {
		return;
	}
	FUNC0 ("------------------------\n");
	int bt = type->t & VT_BTYPE;
	FUNC0 ("BTYPE = %d ", bt);
	switch (bt) {
	case VT_UNION: FUNC0 ("[UNION]\n");
		break;
	case VT_STRUCT: FUNC0 ("[STRUCT]\n");
		break;
	case VT_PTR: FUNC0 ("[PTR]\n");
		break;
	case VT_ENUM: FUNC0 ("[ENUM]\n");
		break;
	case VT_INT64: FUNC0 ("[INT64_T]\n");
		break;
	case VT_INT32: FUNC0 ("[INT32_T]\n");
		break;
	case VT_INT16: FUNC0 ("[INT16_T]\n");
		break;
	case VT_INT8: FUNC0 ("[INT8_T]\n");
		break;
	default:
		FUNC0 ("\n");
		break;
	}
	if (type->ref) {
		FUNC0 ("v = %d\n", type->ref->v);
		char *varstr = NULL;
		varstr = FUNC1 (type->ref->v, NULL);
		if (varstr) {
			FUNC0 ("var = %s\n", varstr);
		}
		if (type->ref->asm_label) {
			FUNC0 ("asm_label = %s\n", type->ref->asm_label);
		}
		FUNC0 ("r = %d\n", type->ref->r);
		FUNC0 ("associated type:\n");
		// dump_type(&(type->ref->type), --depth);
	}
}