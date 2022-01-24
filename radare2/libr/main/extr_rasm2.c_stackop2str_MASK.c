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
#define  R_ANAL_STACK_GET 131 
#define  R_ANAL_STACK_NOP 130 
#define  R_ANAL_STACK_NULL 129 
#define  R_ANAL_STACK_SET 128 
 char* FUNC0 (char*) ; 

__attribute__((used)) static char *FUNC1(int type) {
	switch (type) {
	case R_ANAL_STACK_NULL: return FUNC0 ("null");
	case R_ANAL_STACK_NOP: return FUNC0 ("nop");
	//case R_ANAL_STACK_INCSTACK: return strdup ("incstack");
	case R_ANAL_STACK_GET: return FUNC0 ("get");
	case R_ANAL_STACK_SET: return FUNC0 ("set");
	}
	return FUNC0 ("unknown");
}