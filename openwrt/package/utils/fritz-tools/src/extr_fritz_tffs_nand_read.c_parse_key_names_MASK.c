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
typedef  scalar_t__ uint32_t ;
struct tffs_name_table_entry {int /*<<< orphan*/  val; int /*<<< orphan*/  id; } ;
struct tffs_key_name_table {scalar_t__ size; struct tffs_name_table_entry* entries; } ;
struct tffs_entry {scalar_t__ len; scalar_t__ val; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 struct tffs_name_table_entry* FUNC4 (struct tffs_name_table_entry*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct tffs_entry *names_entry,
			     struct tffs_key_name_table *key_names)
{
	uint32_t pos = 0, i = 0;
	struct tffs_name_table_entry *name_item;

	key_names->entries = NULL;

	do {
		key_names->entries = FUNC4(key_names->entries,
			 sizeof(struct tffs_name_table_entry) * (i + 1));
		if (key_names->entries == NULL) {
			FUNC1(stderr, "ERROR: memory allocation failed!\n");
			FUNC0(EXIT_FAILURE);
		}
		name_item = &key_names->entries[i];

		name_item->id = FUNC3(names_entry->val, pos);
		pos += sizeof(uint32_t);
		name_item->val = FUNC5((const char *)(names_entry->val + pos));

		/*
		 * There is no "length" field because the string values are
		 * simply NULL-terminated -> strlen() gives us the size.
		 */
		pos += FUNC2(FUNC6(name_item->val) + 1);

		++i;
	} while (pos < names_entry->len);

	key_names->size = i;
}