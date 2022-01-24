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
struct TYPE_3__ {int type; } ;
typedef  int /*<<< orphan*/  RCFValueString ;
typedef  int /*<<< orphan*/  RCFValueNULL ;
typedef  int /*<<< orphan*/  RCFValueInteger ;
typedef  int /*<<< orphan*/  RCFValueDict ;
typedef  int /*<<< orphan*/  RCFValueData ;
typedef  int /*<<< orphan*/  RCFValueBool ;
typedef  int /*<<< orphan*/  RCFValueArray ;
typedef  TYPE_1__ RCFValue ;

/* Variables and functions */
#define  R_CF_ARRAY 135 
#define  R_CF_DATA 134 
#define  R_CF_DICT 133 
#define  R_CF_FALSE 132 
#define  R_CF_INTEGER 131 
#define  R_CF_NULL 130 
#define  R_CF_STRING 129 
#define  R_CF_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(RCFValue *value) {
	if (!value) {
		return;
	}

	switch (value->type) {
	case R_CF_DICT:
		FUNC3 ((RCFValueDict *)value);
		break;
	case R_CF_ARRAY:
		FUNC0 ((RCFValueArray *)value);
		break;
	case R_CF_STRING:
		FUNC6 ((RCFValueString *)value);
		break;
	case R_CF_INTEGER:
		FUNC4 ((RCFValueInteger *)value);
		break;
	case R_CF_DATA:
		FUNC2 ((RCFValueData *)value);
		break;
	case R_CF_NULL:
		FUNC5 ((RCFValueNULL *)value);
		break;
	case R_CF_TRUE:
	case R_CF_FALSE:
		FUNC1 ((RCFValueBool *)value);
		break;
	default:
		break;
	}
}