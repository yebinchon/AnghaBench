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
typedef  int ut32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,long,...) ; 

char *FUNC3(ut32 ins_bits, ut32 *ret_len, ut32 ins_pos, ut32 idx) {
	ut8 op, op2, reg_num, type;
	char *res = NULL;

	op = ins_bits >> 6;
	op2 = ins_bits & 3;
	reg_num = (ins_bits >> 2) & 0xF;
	if (ret_len) {
		*ret_len = 0;
	}
	//printf("OP1 %x OP2 0x%x %x\n", op, op2, reg_num);
	res = FUNC1(50);
	if (!res) {
		return NULL;
	}	
	if(op2 == 2) {
		if(op) {
			FUNC2 (res, "*ar%ld(short(#0x%lx))",
				 (long int)reg_num, (long int)idx * op);
		} else {
			FUNC2(res, "*ar%ld", (long int)reg_num);
		}
	} else {
		type = (op >> 3 | 2 * op2);
		if(type == 6) {
			FUNC2(res, "@#0x%lx", (long int)idx * (reg_num | 16 * (op & 7)));
		} else if(type == 7) {
			FUNC2(res, "*sp(#0x%lx)", (long int)idx * (reg_num | 16 * (op & 7)));
		} else {
			type = idx | 16 * op;
			switch(type) {
			case 0:
				FUNC2(res, "*ar%ld-", (long int)reg_num);
				break;
			case 1:
				FUNC2(res, "*ar%ld+", (long int)reg_num);
				break;
			case 2:
				FUNC2(res, "*ar%ld(t0)", (long int)reg_num);
				break;
			case 3:
				FUNC2(res, "*ar%ld(t1)", (long int)reg_num);
				break;
			case 4:
				FUNC2(res, "*(ar%ld-t0)", (long int)reg_num);
				break;
			case 5:
				FUNC2(res, "*(ar%ld-t1)", (long int)reg_num);
				break;
			case 6:
				FUNC2(res, "*(ar%ld+t0)", (long int)reg_num);
				break;
			case 7:
				FUNC2(res, "*(ar%ld+t1)", (long int)reg_num);
				break;
			case 8:
				FUNC2(res, "*-ar%ld", (long int)reg_num);
				break;
			case 9:
				FUNC2(res, "*+ar%ld", (long int)reg_num);
				break;
			case 10:
				FUNC2(res, "*ar%ld(t2)", (long int)reg_num);
				break;
			case 11:
				FUNC2(res, "*ar%ld(t3)", (long int)reg_num);
				break;
			case 12:
				FUNC2(res, "*(ar%ld-t2)", (long int)reg_num);
				break;
			case 13:
				FUNC2(res, "*(ar%ld-t3)", (long int)reg_num);
				break;
			case 14:
				FUNC2(res, "*(ar%ld+t2)", (long int)reg_num);
				break;
			case 15:
				FUNC2(res, "*(ar%ld+t3)", (long int)reg_num);
				break;
			case 16:
				FUNC2(res, "*(ar%ld-t0b)", (long int)reg_num);
				break;
			case 17:
				FUNC2(res, "*(ar%ld+t0b)", (long int)reg_num);
				break;
			case 18:
				FUNC2(res, "*ar%ld(t0<<#1)", (long int)reg_num);
				break;
			case 19:
				FUNC2(res, "*ar%ld(t1<<#1)", (long int)reg_num);
				break;
			case 23:
				FUNC2(res, "*ar%ld(xar15)", (long int)reg_num);
				break;

			case 24:
			case 25:
			case 26:
			case 27:
				idx = FUNC0(ins_pos, 2);
				if(ret_len) {
					*ret_len = 2;
				}
				switch (type) {
				case 24:
					FUNC2(res, "*ar%ld(#%ld)", (long int)reg_num, (long int)op * idx);
					break;
				case 25:
					FUNC2(res, "*+ar%ld(#%ld)", (long int)reg_num, (long int)op * idx);
					break;
				case 26:
					FUNC2(res, "*abs16(#0x%lx)", (long int)idx);
					break;
				default:
					FUNC2(res, "*port(#0x%lx)",  (long int)idx);
					break;
				}
				break;
			case 28:
			case 29:
			case 30:
				idx = FUNC0(ins_pos, 3);
				if(ret_len) {
					*ret_len = 3;
				}
				switch (type) {
				case 28:
					FUNC2(res, "*ar%ld(#0x%lx)", (long int)reg_num, (long int)idx * op);
					break;
				case 29:
					FUNC2(res, "*+ar%ld(#0x%lx)", (long int)reg_num, (long int)idx * op);
					break;
				default:
					FUNC2(res, "*(#0x%lx)", (long int)idx);
					break;
				}

				break;
			}
		}
	}

	return res;
}