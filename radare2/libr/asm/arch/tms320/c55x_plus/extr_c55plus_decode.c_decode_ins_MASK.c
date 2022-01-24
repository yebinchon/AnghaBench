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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut32 ;
typedef  int st32 ;

/* Variables and functions */
 scalar_t__ C55PLUS_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* FUNC4 (int,char*,int,char*,int*,int*,int,int,int,int /*<<< orphan*/ ,int*) ; 
 char** ins_str ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static char *FUNC9(st32 hash_code, ut32 ins_pos, ut32 ins_off, ut32 *ins_len_dec,
	ut32 *reg_len_dec, ut32 *ret_ins_bits, ut32 magic_value, ut8 two_ins, int *err_code)
{
	ut32 ins_len;
	char *ins, *pos;
	char token_aux[80];
	ut32 i, len;
	char *reg = NULL;
	char *res_decode = NULL;
	char *aux = NULL;

	// get instruction length
	ins_len = FUNC2(FUNC3(ins_pos + ins_off, 1));
	// get pseudo instruction
	ins = ins_str[1 + 2 + hash_code * 4];
	if (!ins /*|| ins_str[4 * hash_code] == 0*/) {
		FUNC0(stderr, "Invalid instruction %s /hash %x\n", ins, hash_code);
		*err_code = -1;
		return NULL;
	}
	if (hash_code == 0x19C) {
		res_decode = FUNC4(hash_code, "MMMMxxxxmm", 10, NULL, ret_ins_bits,
			reg_len_dec, magic_value, ins_pos + ins_off, ins_len, two_ins, err_code);
		if (*err_code < 0) {
			return NULL;
		}
	}

	if (C55PLUS_DEBUG) {
		FUNC6 ("PSEUDO INS %s\n", ins);
	}

	pos = ins;
	// instruction length
	*ins_len_dec = ins_len;

	while (*pos) {
		if (*pos == '`') {
			pos++;
			aux = FUNC8(pos, '`');
			if (!aux || pos == aux) {
				FUNC0(stderr, "Invalid instruction %s\n", ins);
				FUNC1 (res_decode);
				*err_code = -1;
				return NULL;
			}
			len = (ut32)(size_t)(aux-pos);
			if (len >= 80) {
				FUNC0(stderr, "Invalid length token %d\n", len);
				FUNC1 (res_decode);
				*err_code = -1;
				return NULL;
			}

			FUNC5(token_aux, pos, len);
			token_aux[len] = '\0';
			pos = aux;

			if (C55PLUS_DEBUG) {
				FUNC6 ("TOKEN AUX: %s\n", token_aux);
			}

			reg = NULL;
			for (i = 0; i < len; i++) {
				if (token_aux[i] == ',') {
					len = (unsigned int)(size_t)(&token_aux[i] - token_aux);
					reg = &token_aux[i + 1];

					if (C55PLUS_DEBUG) {
						FUNC6 ("REG : %s\n", reg);
					}
					break;
				}
			}

			aux = FUNC4(hash_code, token_aux, len, reg, ret_ins_bits,
				reg_len_dec, magic_value, ins_pos + ins_off, ins_len, two_ins, err_code);
			if (*err_code < 0) {
				return NULL;
			}
			res_decode = FUNC7(res_decode, aux, 3);
			if (C55PLUS_DEBUG) {
				FUNC6("RET TOKEN %s\n", res_decode);
			}
		} else {
			token_aux[0] = *pos;
			token_aux[1] = '\0';
			res_decode = FUNC7(res_decode, token_aux, 1);
		}
		pos++;
	}

	if (C55PLUS_DEBUG) {
		FUNC6 ("RESULT DECODE: %s\n", res_decode);
	}

	return res_decode;
}