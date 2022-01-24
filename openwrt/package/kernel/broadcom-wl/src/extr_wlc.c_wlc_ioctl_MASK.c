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
 int BUFSIZE ; 
#define  INT 130 
#define  MAC 129 
 int NOARG ; 
 int PARAM_TYPE ; 
 int SET ; 
#define  STRING 128 
 int /*<<< orphan*/  interface ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,void*,int) ; 

__attribute__((used)) static int FUNC1(wlc_param param, void *data, void *value)
{
	unsigned int *var = ((unsigned int *) data);
	unsigned int ioc = *var;

	if (param & NOARG) {
		return FUNC0(interface, ioc, NULL, 0);
	}
	switch(param & PARAM_TYPE) {
		case MAC:
			return FUNC0(interface, ((param & SET) ? (ioc) : (ioc >> 16)) & 0xffff, value, 6);
		case INT:
			return FUNC0(interface, ((param & SET) ? (ioc) : (ioc >> 16)) & 0xffff, value, sizeof(int));
		case STRING:
			return FUNC0(interface, ((param & SET) ? (ioc) : (ioc >> 16)) & 0xffff, value, BUFSIZE);
	}
	return 0;
}