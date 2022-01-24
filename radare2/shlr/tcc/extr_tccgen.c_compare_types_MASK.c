#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int t; scalar_t__ ref; } ;
typedef  TYPE_1__ CType ;

/* Variables and functions */
 int VT_BTYPE ; 
 int VT_CONSTANT ; 
 int VT_FUNC ; 
 int VT_PTR ; 
 int VT_STRUCT ; 
 int VT_TYPE ; 
 int VT_UNION ; 
 int VT_VOLATILE ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(CType *type1, CType *type2, int unqualified) {
	int t1 = type1->t & VT_TYPE;
	int t2 = type2->t & VT_TYPE;
	if (unqualified) {
		/* strip qualifiers before comparing */
		t1 &= ~(VT_CONSTANT | VT_VOLATILE);
		t2 &= ~(VT_CONSTANT | VT_VOLATILE);
	}
	/* XXX: bitfields ? */
	if (t1 != t2) {
		return 0;
	}
	/* test more complicated cases */
	int bt1 = t1 & VT_BTYPE;
	if (bt1 == VT_PTR) {
		type1 = FUNC2 (type1);
		type2 = FUNC2 (type2);
		return FUNC1 (type1, type2);
	} else if (bt1 == VT_STRUCT || bt1 == VT_UNION) {
		return type1->ref == type2->ref;
	} else if (bt1 == VT_FUNC) {
		return FUNC0 (type1, type2);
	} else {
		return 1;
	}
}