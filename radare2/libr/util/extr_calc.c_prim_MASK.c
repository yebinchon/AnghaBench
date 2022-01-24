#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int curr_tok; void* number_value; int /*<<< orphan*/  string_value; } ;
typedef  void* RNumCalcValue ;
typedef  TYPE_1__ RNumCalc ;
typedef  int /*<<< orphan*/  RNum ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
#define  RNCAND 149 
#define  RNCASSIGN 148 
#define  RNCDEC 147 
#define  RNCDIV 146 
#define  RNCEND 145 
#define  RNCINC 144 
#define  RNCLEFTP 143 
#define  RNCMINUS 142 
#define  RNCMOD 141 
#define  RNCMUL 140 
#define  RNCNAME 139 
#define  RNCNEG 138 
#define  RNCNUMBER 137 
#define  RNCORR 136 
#define  RNCPLUS 135 
#define  RNCPRINT 134 
#define  RNCRIGHTP 133 
#define  RNCROL 132 
#define  RNCROR 131 
#define  RNCSHL 130 
#define  RNCSHR 129 
#define  RNCXOR 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RNumCalcValue FUNC11(RNum *num, RNumCalc *nc, int get) {
	RNumCalcValue v = {0};
	if (get) {
		FUNC8 (num, nc);
	}
	switch (nc->curr_tok) {
	case RNCNUMBER:
		v = nc->number_value;
		FUNC8 (num, nc);
		return v;
	case RNCNAME:
		//fprintf (stderr, "error: unknown keyword (%s)\n", nc->string_value);
		//double& v = table[nc->string_value];
		FUNC10 (nc->string_value);
		v = FUNC3 (FUNC9 (num, nc->string_value));
		FUNC8 (num, nc);
		if (nc->curr_tok  == RNCASSIGN) {
			v = FUNC7 (num, nc, 1);
		}
		if (nc->curr_tok == RNCINC) {
			FUNC0 (v, 1);
		}
		if (nc->curr_tok == RNCDEC) {
			FUNC5 (v, 1);
		}
		return v;
	case RNCNEG:
		FUNC8 (num, nc);
		return FUNC1 (nc->number_value); //prim (num, nc, 1), 1);
	case RNCINC:
		return FUNC0 (FUNC11 (num, nc, 1), 1);
	case RNCDEC:
		return FUNC0 (FUNC11 (num, nc, 1), -1);
	case RNCORR:
		return FUNC2 (v, FUNC11 (num, nc, 1));
	case RNCMINUS:
		return FUNC4 (v, FUNC11 (num, nc, 1));
	case RNCLEFTP:
		v = FUNC7 (num, nc, 1);
		if (nc->curr_tok == RNCRIGHTP) {
			FUNC8 (num, nc);
		} else {
			FUNC6 (num, nc, " ')' expected");
		}
	case RNCEND:
	case RNCXOR:
	case RNCAND:
	case RNCPLUS:
	case RNCMOD:
	case RNCMUL:
	case RNCDIV:
	case RNCPRINT:
	case RNCASSIGN:
	case RNCRIGHTP:
	case RNCSHL:
	case RNCSHR:
	case RNCROL:
	case RNCROR:
		return v;
	//default: error (num, nc, "primary expected");
	}
	return v;
}