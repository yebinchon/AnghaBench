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
typedef  int ut8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static bool FUNC6(char const* addr_str, ut8* addr_out) {
	char *bitpart = FUNC2 (FUNC5 (addr_str) + 1);
	char *bytepart = FUNC2 (FUNC5 (addr_str) + 1);
	char const *separator = FUNC3 (addr_str, '.');
	ut8 byte;
	int bit;
	bool ret = false;
	// TODO: check if symbols are resolved properly in all cases:
	// - symbol.2
	// - 0x25.symbol
	// - symbol.symbol
	// - symbol
	if (!separator) {
		goto end;
	}
	FUNC4 (bytepart, addr_str, separator - addr_str + 1);
	bytepart[separator - addr_str + 1] = '\0';
	FUNC4 (bitpart, separator + 1, FUNC5 (separator));
	if (!FUNC0 (bytepart, &byte)) {
		goto end;
	}
	if (1 < FUNC5 (bitpart)
		|| bitpart[0] < '0' || '7' < bitpart[0]) {
		ret = false;
		goto end;
	}
	bit = bitpart[0] - '0';
	if (0x20 <= byte && byte < 0x30) {
		*addr_out = (byte - 0x20) * 8 + bit;
		ret = true;
	} else if (0x80 <= byte && !(byte%8)) {
		*addr_out = byte + bit;
		ret = true;
	}
end:
	FUNC1 (bitpart); bitpart = 0;
	FUNC1 (bytepart); bytepart = 0;
	return ret;
}