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
typedef  int ut16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

int FUNC6 (ut8* out, const char* unoline) {
	ut16 wordA = 0, wordB = 0;
	int basic_opcode = 0;
	int non_basic_opcode = 0;
	char line[256] = {0}, *param;
	int off = 0;
	// uberflow!
	FUNC0 (line, unoline);
	
	if (!(*line)) return 0;
	if (FUNC4 (line)<4) return 0;
	param = line + 3; /* Cut off first 3 characters */
	
	/* Basic instructions */
	// cmon! use an array
	if (!FUNC5 ("SET", line, 3)) basic_opcode = 0x1;
	else if (!FUNC5 ("ADD", line, 3)) basic_opcode = 0x2;
	else if (!FUNC5 ("SUB", line, 3)) basic_opcode = 0x3;
	else if (!FUNC5 ("MUL", line, 3)) basic_opcode = 0x4;
	else if (!FUNC5 ("DIV", line, 3)) basic_opcode = 0x5;
	else if (!FUNC5 ("MOD", line, 3)) basic_opcode = 0x6;
	else if (!FUNC5 ("SHL", line, 3)) basic_opcode = 0x7;
	else if (!FUNC5 ("SHR", line, 3)) basic_opcode = 0x8;
	else if (!FUNC5 ("AND", line, 3)) basic_opcode = 0x9;
	else if (!FUNC5 ("BOR", line, 3)) basic_opcode = 0xA;
	else if (!FUNC5 ("XOR", line, 3)) basic_opcode = 0xB;
	else if (!FUNC5 ("IFE", line, 3)) basic_opcode = 0xC;
	else if (!FUNC5 ("IFN", line, 3)) basic_opcode = 0xD;
	else if (!FUNC5 ("IFG", line, 3)) basic_opcode = 0xE;
	else if (!FUNC5 ("IFB", line, 3)) basic_opcode = 0xF;
	
	/* Non basic instructions */
	if (basic_opcode == 0) {
		if (!FUNC5 ("JSR", line, 3)) {
			non_basic_opcode = 0x1;
		} else {
			FUNC2 (stderr, "Unknown instruction\n");
			return -1;
		}
	}
	
	/* Decode basic instructions */
	if (basic_opcode != 0) {
		ut8 paramA = 0, paramB = 0;
		
		/* Find comma */
		int cn = 0;
		while (cn < 256
                        && param[cn] != ','
			&& param[cn] != '\n'
			&& param[cn] != 0)
			cn++;
			
		if (param[cn] == ',') {
			ut16 first_word;
			int extraA = 0;
			int extraB = 0;
			char *pa, *pb;
			/* Split parameter string to A and B */
			param[cn] = 0;
			pa = param;
			pb = param + cn + 1;
			
			/* Increment address for the start word */
			//current_address++;
			
			/* Parameter A */
			paramA = FUNC1 (pa, &extraA, &wordA);
			//if (extraA == 1) current_address++;
				
			/* Parameter B */
			paramB = FUNC1(pb, &extraB, &wordB);
			//if (extraB == 1) current_address++;
				
			/* Put everything together */
			first_word = ((paramB & 0x3F) << 10) | ((paramA & 0x3F) << 4) | (basic_opcode & 0xF);

			/* write opcode */
#if NOTEND
			memcpy (out, &first_word, 2);
			if (extraA == 1) {
				memcpy (out+2, &wordA, 2);
				off = 4;
			} else off = 2;
			if (extraB == 1) {
				memcpy (out+off, &wordB, 2);
				off += 2;
			}
#else
			out[0] = (first_word>>8) & 0xff;
			out[1] = first_word & 0xff;
			if (extraA == 1) {
				out[2] = (wordA>>8) & 0xff;
				out[3] = wordA & 0xff;
				off = 4;
			} else off = 2;
			if (extraB == 1) {
				out[off] = (wordB>>8) & 0xff;
				out[off+1] = wordB & 0xff;
				off += 2;
			}
#endif
		} else {
			FUNC2 (stderr, "Missing comma\n");
			return -1;
		}
	}
	
	/* Non basic instructions */
	if (non_basic_opcode == 0x1) { /* JSR */
		int extraX = 0;
		ut16 first_word, wordX = 0;
		ut8 p = FUNC1 (param, &extraX, &wordX);

		first_word = ((p & 0x3F) << 10) \
			| ((non_basic_opcode & 0x3F) << 4) \
			| (basic_opcode & 0xF);
#if NOTEND
		memcpy (out, &first_word, 2);
		if (extraX == 1) {
			memcpy (out+2, &wordX, 2);
			off = 4;
		} else off = 2;
#else
		out[0] = (first_word>>8) & 0xff;
		out[1] = first_word & 0xff;
		if (extraX == 1) {
			out[2] = (wordX>>8) & 0xff;
			out[3] = wordX & 0xff;
			off = 4;
		} else off = 2;
#endif
	}
	return off;
}