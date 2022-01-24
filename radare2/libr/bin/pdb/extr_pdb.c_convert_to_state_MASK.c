#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EStates ;

/* Variables and functions */
 int /*<<< orphan*/  eArrayState ; 
 int /*<<< orphan*/  eBitfieldState ; 
 int /*<<< orphan*/  eCharState ; 
 int /*<<< orphan*/  eDoubleState ; 
 int /*<<< orphan*/  eEnumState ; 
 int /*<<< orphan*/  eLongState ; 
 int /*<<< orphan*/  eMemberState ; 
 int /*<<< orphan*/  eModifierState ; 
 int /*<<< orphan*/  eOneMethodState ; 
 int /*<<< orphan*/  ePointerState ; 
 int /*<<< orphan*/  eShortState ; 
 int /*<<< orphan*/  eStateMax ; 
 int /*<<< orphan*/  eStructState ; 
 int /*<<< orphan*/  eUnionState ; 
 int /*<<< orphan*/  eUnsignedState ; 
 int /*<<< orphan*/  eVoidState ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static EStates FUNC1(char *cstate) {
	EStates state = eStateMax;

	if (FUNC0 (cstate, "member")) {
		state = eMemberState;
	} else if (FUNC0 (cstate, "pointer")) {
		state = ePointerState;
	} else if (FUNC0 (cstate, "union")) {
		state = eUnionState;
	} else if (FUNC0 (cstate, "struct")) {
		state = eStructState;
	} else if (FUNC0 (cstate, "unsigned")) {
		state = eUnsignedState;
	} else if (FUNC0 (cstate, "short")) {
		state = eShortState;
	} else if (FUNC0 (cstate, "long")) {
		state = eLongState;
	} else if (FUNC0 (cstate, "char")) {
		state = eCharState;
	} else if (FUNC0 (cstate, "modifier")) {
		state = eModifierState;
	} else if (FUNC0 (cstate, "enum")) {
		state = eEnumState;
	} else if (FUNC0 (cstate, "array")) {
		state = eArrayState;
	} else if (FUNC0 (cstate, "onemethod")) {
		state = eOneMethodState;
	} else if (FUNC0 (cstate, "void")) {
		state = eVoidState;
	} else if (FUNC0 (cstate, "double")) {
		state = eDoubleState;
	} else if (FUNC0 (cstate, "bitfield")) {
		state = eBitfieldState;
	}

	return state;
}