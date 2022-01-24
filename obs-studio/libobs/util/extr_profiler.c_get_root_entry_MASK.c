#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_mutex_t ;
struct TYPE_6__ {char const* name; int /*<<< orphan*/  entry; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ profile_root_entry ;
typedef  int /*<<< orphan*/  profile_entry ;
struct TYPE_7__ {size_t num; TYPE_1__* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ root_entries ; 

__attribute__((used)) static profile_root_entry *FUNC5(const char *name)
{
	profile_root_entry *r_entry = NULL;

	for (size_t i = 0; i < root_entries.num; i++) {
		if (root_entries.array[i].name == name) {
			r_entry = &root_entries.array[i];
			break;
		}
	}

	if (!r_entry) {
		r_entry = FUNC2(root_entries);
		r_entry->mutex = FUNC0(sizeof(pthread_mutex_t));
		FUNC4(r_entry->mutex, NULL);

		r_entry->name = name;
		r_entry->entry = FUNC1(sizeof(profile_entry));
		FUNC3(r_entry->entry, name);
	}

	return r_entry;
}