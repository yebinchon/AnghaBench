#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_3__ {int crc_ver_init; int config_refresh; int config_ncdl; } ;
typedef  TYPE_1__ nvram_header_t ;
typedef  int /*<<< orphan*/  nvram_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(nvram_handle_t *h)
{
	nvram_header_t *header = FUNC2(h);
	char buf[] = "0xXXXXXXXX", *name, *value, *eq;

	/* (Re)initialize hash table */
	FUNC0(h);

	/* Parse and set "name=value\0 ... \0\0" */
	name = (char *) &header[1];

	for (; *name; name = value + FUNC6(value) + 1) {
		if (!(eq = FUNC5(name, '=')))
			break;
		*eq = '\0';
		value = eq + 1;
		FUNC3(h, name, value);
		*eq = '=';
	}

	/* Set special SDRAM parameters */
	if (!FUNC1(h, "sdram_init")) {
		FUNC4(buf, "0x%04X", (uint16_t)(header->crc_ver_init >> 16));
		FUNC3(h, "sdram_init", buf);
	}
	if (!FUNC1(h, "sdram_config")) {
		FUNC4(buf, "0x%04X", (uint16_t)(header->config_refresh & 0xffff));
		FUNC3(h, "sdram_config", buf);
	}
	if (!FUNC1(h, "sdram_refresh")) {
		FUNC4(buf, "0x%04X",
			(uint16_t)((header->config_refresh >> 16) & 0xffff));
		FUNC3(h, "sdram_refresh", buf);
	}
	if (!FUNC1(h, "sdram_ncdl")) {
		FUNC4(buf, "0x%08X", header->config_ncdl);
		FUNC3(h, "sdram_ncdl", buf);
	}

	return 0;
}