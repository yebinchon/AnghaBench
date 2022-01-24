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
typedef  int ut8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*) ; 

char *FUNC5(ut8 oper_byte) {
	char *res = NULL;
	ut8 oper_type = 0x00;
	char *reg_name = NULL;

	switch (oper_byte) {
	case 0xE0u:
		res = FUNC4 ("overflow(ac0)");
		break;
	case 0xE1u:
		res = FUNC4 ("overflow(ac1)");
		break;
	case 0xE2u:
		res = FUNC4 ("overflow(ac2)");
		break;
	case 0xE3u:
		res = FUNC4 ("overflow(ac3)");
		break;
	case 0xE4u:
		res = FUNC4 ("tc1");
		break;
	case 0xE5u:
		res = FUNC4 ("tc2");
		break;
	case 0xE6u:
		res = FUNC4 ("carry");
		break;
	case 0xE7u:
		res = FUNC4 ("overflow(govf)");
		break;
	case 0xE8u:
		res = FUNC4 ("tc1 & tc2");
		break;
	case 0xE9u:
		res = FUNC4 ("tc1 & !tc2");
		break;
	case 0xEAu:
		res = FUNC4 ("!tc1 & tc2");
		break;
	case 0xEBu:
		res = FUNC4 ("!tc1 & !tc2");
		break;
	case 0xECu:
		res = FUNC4 ("word_mode");
		break;
	case 0xEDu:
		res = FUNC4 ("byte_mode");
		break;
	case 0xF0u:
		res = FUNC4 ("!overflow(ac0)");
		break;
	case 0xF1u:
		res = FUNC4 ("!overflow(ac1)");
		break;
	case 0xF2u:
		res = FUNC4 ("!overflow(ac2)");
		break;
	case 0xF3u:
		res = FUNC4 ("!overflow(ac3)");
		break;
	case 0xF4u:
		res = FUNC4 ("!tc1");
		break;
	case 0xF5u:
		res = FUNC4 ("!tc2");
		break;
	case 0xF6u:
		res = FUNC4 ("!carry");
		break;
	case 0xF7u:
		res = FUNC4 ("!overflow(govf)");
		break;
	case 0xF8u:
		res = FUNC4 ("tc1 | tc2");
		break;
	case 0xF9u:
		res = FUNC4 ("tc1 | !tc2");
		break;
	case 0xFAu:
		res = FUNC4 ("!tc1 | tc2");
		break;
	case 0xFBu:
		res = FUNC4 ("!tc1 | !tc2");
		break;
	case 0xFCu:
		res = FUNC4 ("tc1 ^ tc2");
		break;
	case 0xFDu:
		res = FUNC4 ("tc1 ^ !tc2");
		break;
	case 0xFEu:
		res = FUNC4 ("!tc1 ^ tc2");
		break;
	case 0xFFu:
		res = FUNC4("!tc1 ^ !tc2");
		break;
	default:
		oper_type = oper_byte >> 5;
		if (oper_type != 6 ) {
			reg_name = FUNC2 (oper_byte & 0x1F);
			switch (oper_type) {
			case 1u:
				res = FUNC3 (reg_name, " != #0", 1);
				break;
			case 0u:
				res = FUNC3 (reg_name, " == #0", 1);
				break;
			case 2u:
				res =  FUNC3 (reg_name, " < #0", 1);
				break;
			case 3u:
				res =  FUNC3 (reg_name, " >= #0", 1);
				break;
			case 4u:
				res =  FUNC3 (reg_name, " > #0", 1);
				break;
			case 5u:
				res =  FUNC3 (reg_name, " <= #0", 1);
			}
			//TODO: still can leak
			return res;
		}
		reg_name = FUNC1 ((oper_byte & 0xF) + 128);
		oper_type = (oper_byte >> 4) - 12;
		if (oper_type) {
			if (oper_type != 1) {
				FUNC0 (reg_name);
				return NULL;
			}
			res = FUNC3 (reg_name, " != #0", 1);
		} else {
			// coverity may complain but strcat_dup set to null
			// reg_name when free
			res = FUNC3 (reg_name, " == #0", 1);
		}
	}
	FUNC0 (reg_name);
	return res;
}