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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(const char *operand) {
	int res = -1;
	char *first, *second, *op;
	int fnum, snum;

	op = FUNC2 (operand);
	first = FUNC4 (op, ":");

	if (!first || FUNC3 (first) < 2) {
		FUNC1 (op);
		return -1;
	}

	second = FUNC4 (NULL, ":");

	/* the next code handles two possible different representation of pair
	   by pair rx+1:rx
	   or by even register rx
	   this is a bit ugly, code-duplicating, however stable
	   anyway FIXME if you have better idea */
	if (second && FUNC3 (second) < 2) {
		/* the pair is set by pair
		   this is currently useless, cause rasm2 filters ':' from assembler
		   however, this bug soon will be fixed */
		if (first[0] == 'r' && second[0] == 'r') {
			fnum = FUNC0(first+1);
			snum = FUNC0(second+1);
			if (fnum > snum && snum >= 0 && snum <= 30) {
				res = snum / 2;
			}
		} else if (first[0] >= 'x' && first[0] <= 'z'
			 && second[0] >= 'x' && second[0] <= 'z'
			 && first[1] == 'h' && second[1] == 'l') {
			// convert to register pair number by inversing and invert (and adding 12)
			res = (2 - ('z' - first[0])) + 12;
		}
	} else {
		// the pair by even register (first)
		if (first[0] == 'r') {
			snum = FUNC0(first+1);
			if (snum >= 0 && snum <= 30) {
				res = snum / 2;
			}
		} else if (first[0] >= 'x' && first[0] <= 'z') {
			res = (2 - ('z' - first[0])) + 12;
		}
	}
	FUNC1 (op);
	return res;
}