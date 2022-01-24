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
typedef  int /*<<< orphan*/  R_PDB ;
typedef  int EStates ;

/* Variables and functions */
 int FUNC0 (char*) ; 
#define  eArrayState 141 
#define  eBitfieldState 140 
#define  eCharState 139 
#define  eEnumState 138 
#define  eLongState 137 
#define  eMemberState 136 
#define  eModifierState 135 
#define  eOneMethodState 134 
#define  ePointerState 133 
#define  eShortState 132 
#define  eStructState 131 
#define  eUnionState 130 
#define  eUnsignedState 129 
#define  eVoidState 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static int FUNC9(R_PDB *pdb, char *type, int pos, char *res_field, char **name_field) {
	EStates curr_state;
	char *tmp = 0;
	char *name = 0;

	tmp = FUNC8 (type, " ");
	while (tmp != NULL) {
		curr_state = FUNC0 (tmp);
		switch (curr_state) {
		case eMemberState:
			break;
		case ePointerState:
			if (res_field[pos] == 'p') {
				return 1;
			}
			res_field[pos] = 'p';
			break;
		case eUnionState:
		case eStructState:
			res_field[pos] = '?';
			tmp = FUNC8 (NULL, " ");
			name = (char *) FUNC2 (FUNC7 (tmp) + FUNC7 (*name_field) + 1 + 2);
			if (!name) {
				return 0;
			}
			FUNC3 (tmp, -1);
			FUNC3 (*name_field, -1);
			FUNC6 (name, tmp);

			FUNC4 (name, "(%s)%s", tmp, *name_field);
			FUNC1 (*name_field);
			*name_field = name;

			return 1;
		case eUnsignedState:
			if (res_field[pos] == 'p') {
				return 1;
			}
			res_field[pos] = 'u';
			break;
		case eShortState:
			// TODO: where is short??
			// where is unsigned not in hex??
			// w word (2 bytes unsigned short in hex)
			if (res_field[pos] == 'p') {
				return 1;
			}
			res_field[pos] = 'w';
			return 1;
		case eCharState:
			if (res_field[pos] == 'p') {
				return 1;
			}
			if (res_field[pos] == 'u') {
				res_field[pos] = 'b';
			} else {
				res_field[pos] = 'c';
			}
			return 1;
		case eLongState:
			if (res_field[pos] == 'p') {
				return 1;
			}
			res_field[pos] = 'i';
			return 1;
		case eModifierState:
			if (res_field[pos] == 'p') {
				return 1;
			}
			res_field[pos] = 'w';
			break;
		case eEnumState:
			if (res_field[pos] == 'p') {
				return 1;
			}
			res_field[pos] = 'E';
			tmp = FUNC8 (NULL, " ");
			name = (char *) FUNC2 (FUNC7 (tmp) + FUNC7 (*name_field) + 1 + 2);
			if (!name) {
				return 0;
			}
			FUNC6 (name, tmp);
			FUNC4 (name, "(%s)%s", tmp, *name_field);
			FUNC1 (*name_field);
			*name_field = name;
			return 1;
// case eDoubleState:
//// TODO: what is the flag for double in pf??
// res_field[pos] = 'q';
// return 1;
		case eBitfieldState:
			res_field[pos] = 'B';
			tmp = FUNC8 (NULL, " ");
			name = (char *) FUNC2 (FUNC7 (tmp) + FUNC7 (*name_field) + 1 + 2);
			if (!name) {
				return 0;
			}
			FUNC6 (name, tmp);
			FUNC4 (name, "(%s)%s", tmp, *name_field);
			FUNC1 (*name_field);
			*name_field = name;
			return 1;
		case eVoidState:
		case eArrayState:
		case eOneMethodState:
			res_field[pos] = 'p';
			return 1;
		default:
			if (((!FUNC5 (tmp, "to"))) ||
			    (!FUNC5 (tmp, "nesttype")) ||
			    (!FUNC5 (tmp, "mfunction")) ||
			    (!FUNC5 (tmp, "proc")) ||
			    (!FUNC5 (tmp, "arglist"))) {
				break;
			} else {
				//eprintf ("There is no support for type \"%s\" in PF structs\n", tmp);
				res_field[pos] = 'A';
				return 0;
			}
		}

		tmp = FUNC8 (NULL, " ");
	}

	return 1;
}