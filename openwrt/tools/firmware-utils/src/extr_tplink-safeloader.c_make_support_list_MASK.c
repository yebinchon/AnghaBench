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
struct image_partition_entry {int /*<<< orphan*/ * data; } ;
struct device_info {int /*<<< orphan*/  support_trail; int /*<<< orphan*/  support_list; } ;

/* Variables and functions */
 struct image_partition_entry FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct image_partition_entry FUNC5(struct device_info *info) {
	size_t len = FUNC4(info->support_list);
	struct image_partition_entry entry = FUNC0("support-list", len + 9);

	FUNC3(entry.data, len);
	FUNC2(entry.data+4, 0, 4);
	FUNC1(entry.data+8, info->support_list, len);
	entry.data[len+8] = info->support_trail;

	return entry;
}