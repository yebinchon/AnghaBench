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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3(void* nvram_addr, const char *name, char *mac)
{
	u8 *nvram = (u8 *) FUNC0(nvram_addr);
	int err;

	err = FUNC1(nvram, 0x10000,
					 name, mac);
	if (err)
		FUNC2("no MAC address found for %s\n", name);
}