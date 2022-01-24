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

/* Variables and functions */
 int err ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static ut32 FUNC6(const char *str) {
	// only immediate shifts are ever used by thumb-2. Bit positions are different from ARM.
	const char *shifts[] = {
		"LSL", "LSR", "ASR", "ROR", 0, "RRX"
	};
	char *type = FUNC5 (str);
	char *arg;
	char *space;
	ut32 res = 0;
	ut32 shift = false;
	err = false;
	ut32 argn;
	ut32 i;
	
	FUNC2 (type,true);
	
	if (!FUNC4 (type, shifts[5])) {
		// handle RRX alias case
		res |= 3 << 12;	
		FUNC0 (type);
		return res;
	}
	
	space = FUNC3 (type, ' ');
	if (!space) {
		FUNC0 (type);
		err = true;
		return 0;
	}
	*space = 0;
	arg = FUNC5 (++space);
	
	for (i = 0; shifts[i]; i++) {
		if (!FUNC4 (type, shifts[i])) {
			shift = true;
			break;
		}
	}
	if (!shift) {
		err = true;
		FUNC0 (type);
		FUNC0 (arg);
		return 0;
	}
	res |= i << 12;
		
	argn = FUNC1 (arg);
	if (err || argn > 32) {
		err = true;
		FUNC0 (type);
		FUNC0 (arg);
		return 0;
	}
	res |= ( (argn & 0x1c) << 2);
	res |= ( (argn & 0x3) << 14);

	FUNC0 (type);
	FUNC0 (arg);
	return res;
}