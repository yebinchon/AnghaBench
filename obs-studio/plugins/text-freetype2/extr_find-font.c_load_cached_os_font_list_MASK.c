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
typedef  int /*<<< orphan*/  ver ;
typedef  scalar_t__ uint32_t ;
struct serializer {int dummy; } ;
typedef  int /*<<< orphan*/  old_checksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct serializer*) ; 
 int FUNC2 (struct serializer*,char*) ; 
 scalar_t__ font_cache_ver ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (struct serializer*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (struct serializer*,scalar_t__*,int) ; 
 int FUNC7 (struct serializer*,scalar_t__*,int) ; 

bool FUNC8(void)
{
	char *file_name = FUNC5("font_data.bin");
	uint32_t old_checksum;
	uint32_t new_checksum;
	struct serializer s;
	uint32_t ver;
	bool success;

	success = FUNC2(&s, file_name);
	FUNC0(file_name);

	if (!success)
		return false;

	success = FUNC6(&s, &ver, sizeof(ver));

	if (!success || ver != font_cache_ver) {
		success = false;
		goto finish;
	}

	success = FUNC7(&s, &old_checksum, sizeof(old_checksum));
	new_checksum = FUNC3();

	if (!success || old_checksum != new_checksum) {
		success = false;
		goto finish;
	}

	success = FUNC4(&s);

finish:
	FUNC1(&s);
	return success;
}