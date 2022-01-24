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
 int /*<<< orphan*/  DAP2695_NVRAM_ADDR ; 
 int /*<<< orphan*/  DAP2695_NVRAM_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3(const char *name, char *mac)
{
	u8 *nvram = (u8 *) FUNC0(DAP2695_NVRAM_ADDR);
	int err;

	err = FUNC1(nvram, DAP2695_NVRAM_SIZE,
					 name, mac);
	if (err)
		FUNC2("no MAC address found for %s\n", name);
}