#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t uint32_t ;
struct tffs_key_name_table {size_t size; TYPE_1__* entries; } ;
struct tffs_entry {int /*<<< orphan*/  val; } ;
struct TYPE_2__ {scalar_t__ val; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct tffs_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tffs_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(struct tffs_key_name_table *key_names)
{
	uint8_t has_value = 0;
	struct tffs_entry tmp;

	for (uint32_t i = 0; i < key_names->size; i++) {
		if (FUNC0(key_names->entries[i].id, &tmp)) {
			FUNC4("%s=", (const char *)key_names->entries[i].val);
			FUNC3(&tmp);
			FUNC4("\n");
			has_value++;
			FUNC2(tmp.val);
		}
	}

	if (!has_value) {
		FUNC1(stderr, "ERROR: no values found!\n");
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}