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
typedef  int /*<<< orphan*/  wlc_param ;

/* Variables and functions */
 int /*<<< orphan*/  WLC_WDS_GET_REMOTE_HWADDR ; 
 int /*<<< orphan*/  interface ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char**,int) ; 

__attribute__((used)) static int FUNC2(wlc_param param, void *data, void *value)
{
	unsigned char mac[6];
	int ret = 0;
	
	ret = FUNC1(interface, WLC_WDS_GET_REMOTE_HWADDR, &mac, 6);
	if (ret == 0)
		FUNC0(mac, value);

	return ret;
}