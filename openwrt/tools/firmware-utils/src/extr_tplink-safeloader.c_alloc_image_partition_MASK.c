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
struct image_partition_entry {char const* member_0; size_t member_1; int /*<<< orphan*/  data; int /*<<< orphan*/  member_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

__attribute__((used)) static struct image_partition_entry FUNC2(const char *name, size_t len) {
	struct image_partition_entry entry = {name, len, FUNC1(len)};
	if (!entry.data)
		FUNC0(1, errno, "malloc");

	return entry;
}