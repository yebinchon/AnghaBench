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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int GET ; 
 int SET ; 
 int /*<<< orphan*/  WLC_GET_VAR ; 
 int /*<<< orphan*/  WLC_SET_VAR ; 
 int /*<<< orphan*/  interface ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int vif ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(wlc_param param, void *data, void *value)
{
	int *val = (int *) value;
	int buf[3];
	int ret = 0;
	
	FUNC0((char *) buf, "bss");
	buf[1] = vif;
	if (param & SET) {
		buf[2] = (*val ? 1 : 0);
		ret = FUNC1(interface, WLC_SET_VAR, buf, sizeof(buf));
	} else if (param & GET) {
		ret = FUNC1(interface, WLC_GET_VAR, buf, sizeof(buf));
		*val = buf[0];
	}

	return ret;
}