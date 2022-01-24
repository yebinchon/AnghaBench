#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  octet; } ;
typedef  TYPE_2__ ip_type4 ;
struct TYPE_5__ {TYPE_2__ v4; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct in_addr*) ; 
 TYPE_3__ ip_type_invalid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

ip_type4 FUNC3(const char* name) {
	char *hres;
	char buf[320];
	if((hres = FUNC0(name, buf, sizeof buf))) {
		struct in_addr c;
		FUNC1(hres, &c);
		ip_type4 res;
		FUNC2(res.octet, &c.s_addr, 4);
		return res;
	} else return ip_type_invalid.addr.v4;
}