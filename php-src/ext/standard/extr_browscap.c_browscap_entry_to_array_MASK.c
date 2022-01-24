#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  size_t uint32_t ;
struct TYPE_7__ {TYPE_1__* kv; } ;
typedef  TYPE_2__ browser_data ;
struct TYPE_8__ {size_t kv_start; size_t kv_end; int /*<<< orphan*/  parent; int /*<<< orphan*/  pattern; } ;
typedef  TYPE_3__ browscap_entry ;
struct TYPE_6__ {int /*<<< orphan*/  key; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 

__attribute__((used)) static HashTable *FUNC6(browser_data *bdata, browscap_entry *entry) {
	zval tmp;
	uint32_t i;

	HashTable *ht = FUNC5(8);

	FUNC0(&tmp, FUNC2(entry->pattern, 0));
	FUNC4(ht, "browser_name_regex", sizeof("browser_name_regex")-1, &tmp);

	FUNC1(&tmp, entry->pattern);
	FUNC4(ht, "browser_name_pattern", sizeof("browser_name_pattern")-1, &tmp);

	if (entry->parent) {
		FUNC1(&tmp, entry->parent);
		FUNC4(ht, "parent", sizeof("parent")-1, &tmp);
	}

	for (i = entry->kv_start; i < entry->kv_end; i++) {
		FUNC1(&tmp, bdata->kv[i].value);
		FUNC3(ht, bdata->kv[i].key, &tmp);
	}

	return ht;
}