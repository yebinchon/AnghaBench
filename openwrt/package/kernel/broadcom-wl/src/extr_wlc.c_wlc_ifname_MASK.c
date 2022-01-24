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
typedef  int wlc_param ;

/* Variables and functions */
 int GET ; 
 int SET ; 
 char* interface ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(wlc_param param, void *data, void *value)
{
	char *val = (char *) value;
	int ret = 0;
	
	if (param & SET) {
		if (FUNC1(val) < 16)
			FUNC0(interface, val);
		else ret = -1;
	}
	if (param & GET) {
		FUNC0(val, interface);
	}

	return ret;
}