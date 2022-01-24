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
typedef  int uint8_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 char* FUNC1 (int,int,int) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,...) ; 

void FUNC4(char *buff, size_t size, uint8_t class,
			   uint8_t subclass, uint8_t protocol)
{
	const char *c, *s, *p;

	if (class == 0 && subclass == 0 && protocol == 0) {
		FUNC3(buff, size, "(Defined at Interface level) (%02x/%02x/%02x)", class, subclass, protocol);
		return;
	}

	p = FUNC1(class, subclass, protocol);
	if (!p)
		p = "unknown protocol";

	s = FUNC2(class, subclass);
	if (!s)
		s = "unknown subclass";

	c = FUNC0(class);
	if (!c)
		c = "unknown class";

	FUNC3(buff, size, "%s / %s / %s (%02x/%02x/%02x)", c, s, p, class, subclass, protocol);
}