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
typedef  size_t ut8 ;
typedef  int st8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static st8 FUNC2(char *input) {
	st8 res = 0;
	ut8 i;
	FUNC0 (input, false);
	
	for (i = 0; i < FUNC1(input); i++) {
		switch (input[i]) {
		case 'a':
			res |= 0x4;
			break;
		case 'i':
			res |= 0x2;
			break;
		case 'f':
			res |= 0x1;
			break;
		default:
			return -1;
		}
	}
	return res;
}