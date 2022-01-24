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
typedef  scalar_t__ ut32 ;
typedef  int st32 ;

/* Variables and functions */
 char* FUNC0 (scalar_t__,scalar_t__,int,scalar_t__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__,int) ; 
 scalar_t__ ins_buff_len ; 
 char* FUNC3 (char*,char*,int) ; 

char *FUNC4(ut32 ins_pos, ut32 *next_ins_pos) {
	ut8 opcode, two_ins = 0;
	ut32 next_ins1_pos, next_ins2_pos;
	st32 hash_code;
	char *ins1, *ins2, *aux, *ins_res;
	int err_code;

	if (ins_pos >= ins_buff_len) {
		return NULL;
	}
	ins_res = NULL;
	err_code = 0;

	opcode = FUNC2(ins_pos, 1);
	if ((opcode & 0xF0) == 0x30) {
		two_ins = opcode & 0x0F;
		if(two_ins < 4) {
			two_ins += 0xF;
		}
	} else {
		two_ins = 0;
	}

	// two instruction execution?
	if (two_ins) {
		ins1 = FUNC0(1, ins_pos, two_ins, &next_ins1_pos, &hash_code, &err_code);
		if (err_code < 0) {
			FUNC1 (ins1);
			return NULL;
		}
		ins2 = FUNC0(next_ins1_pos + 1, ins_pos, two_ins, &next_ins2_pos, NULL, &err_code);
		if (err_code < 0) {
			FUNC1 (ins1);
			FUNC1 (ins2);
			return NULL;
		}
		*next_ins_pos = next_ins2_pos;

		if (hash_code == 0xF0 || hash_code == 0xF1) {
			aux = FUNC3(ins2, " || ", 1);
			ins_res = FUNC3(aux, ins1, 1);
			FUNC1(ins1);
		} else {
			aux = FUNC3(ins1, " || ", 1);
			ins_res = FUNC3(aux, ins2, 1);
			FUNC1(ins2);
		}
		*next_ins_pos = next_ins1_pos + next_ins2_pos + 1;
		if(*next_ins_pos != two_ins) {
			//ins_res = strcat_dup(ins_res, " P-tag problem", 1);
			err_code = -1;
			FUNC1 (ins_res);
			return NULL;
		}
	} else {
		ins_res = FUNC0(0, ins_pos, two_ins, &next_ins1_pos, &hash_code, &err_code);
		if (err_code < 0) {
			FUNC1 (ins_res);
			return NULL;
		}
		*next_ins_pos = next_ins1_pos;
	}

	return ins_res;
}