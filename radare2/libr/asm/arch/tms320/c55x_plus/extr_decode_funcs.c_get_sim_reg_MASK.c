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
typedef  int ut32 ;
typedef  int st32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 

char *FUNC6 (char *reg_arg, ut32 ins_bits) {
	st32 code;
	char *res = NULL;
	char *aux;
	code = ins_bits & 3;
	switch (code) {
	case 0:
		if(reg_arg && FUNC4 (reg_arg, 'w')) {
			if(code == 62) {
				return FUNC5 ("sim0");
			}
			if(code == 63) {
				return FUNC5 ("sim0");
			}
		}
		aux = FUNC1 (ins_bits >> 2);
		res = FUNC3 ("@", aux, 2);
		break;
	case 2:
		aux = (char *)FUNC0 (1, 50);
		if (!aux) {
			return NULL;
		}
		FUNC2 (aux, "@#0x%x", code);
		res = aux;
		break;
	case 1:
	case 3:
		res = FUNC5 ("<reserved>");
		break;
	}
	return res;
}