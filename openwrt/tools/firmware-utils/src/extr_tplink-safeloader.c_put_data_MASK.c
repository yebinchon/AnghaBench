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
struct image_partition_entry {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct image_partition_entry FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static struct image_partition_entry FUNC2(const char *part_name, const char *datain, size_t len) {

	struct image_partition_entry entry = FUNC0(part_name, len);

	FUNC1(entry.data, datain, len);

	return entry;
}