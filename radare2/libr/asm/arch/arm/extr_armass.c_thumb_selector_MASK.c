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
typedef  int ut64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int err ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static ut64 FUNC15(char *args[]) {
	FUNC0(args);
	ut64 res = 0;
	ut8 i;
	for (i = 0; i < 15; i++) {
		if (args[i] == NULL) {
			break;
		}
		if (FUNC7 (args[i]) != -1) {
			res |= 1 << (i*4);
			continue;
		}
		err = false;
		FUNC3 (args[i]);
		if (!err) {
			res |= 2 << (i*4);
			continue;
		}
		err = false;   	
		FUNC14 (args[i]);
		if (!err) {
			res |= 3 << (i*4);
			continue;
		}
		if (FUNC1 (args[i]) != -1) {
			res |= 4 << (i*4);
			continue;
		}
		if (FUNC2 (args[i]) != -1) {
			res |= 5 << (i*4);
			continue;
		}
		if (FUNC11 (args[i]) != -1) {
			res |= 6 << (i*4);
			continue;
		}
		if (FUNC12 (args[i]) != -1) {
			res |= 7 << (i*4);
			continue;
		}
		err = false;
		FUNC5(args[i]);
		if (!err) {
			res |= 8 << (i*4);
			continue;
		}
		err = false;
		FUNC6(args[i]);
		if (!err) {
			res |= 9 << (i*4);
			continue;
		}
		if (FUNC9 (args[i]) != -1) {
			res |= 0xa << (i*4);
			continue;
		}
		if (FUNC8 (args[i]) != -1) {
			res |= 0xb << (i*4);
			continue;
		}
		if (FUNC10 (args[i]) != -1) {
			res |= 0xc << (i*4);
			continue;
		}
		if (FUNC13 (args[i]) != -1) {
			res |= 0xd << (i*4);
			continue;
		}
		err = false;
		FUNC4(args[i]);
		if (!err) {
			res |= 0xe << (i*4);
			continue;
		}
		res |= 0xf << (i*4);
	}
	err = false;
	return res;
}