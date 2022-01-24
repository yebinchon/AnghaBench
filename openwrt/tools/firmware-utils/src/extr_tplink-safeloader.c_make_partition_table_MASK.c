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
struct image_partition_entry {int size; scalar_t__ data; } ;
struct flash_partition_entry {char* name; int base; int size; } ;

/* Variables and functions */
 struct image_partition_entry FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 size_t FUNC3 (char*,size_t,char*,char*,int,int) ; 

__attribute__((used)) static struct image_partition_entry FUNC4(const struct flash_partition_entry *p) {
	struct image_partition_entry entry = FUNC0("partition-table", 0x800);

	char *s = (char *)entry.data, *end = (char *)(s+entry.size);

	*(s++) = 0x00;
	*(s++) = 0x04;
	*(s++) = 0x00;
	*(s++) = 0x00;

	size_t i;
	for (i = 0; p[i].name; i++) {
		size_t len = end-s;
		size_t w = FUNC3(s, len, "partition %s base 0x%05x size 0x%05x\n", p[i].name, p[i].base, p[i].size);

		if (w > len-1)
			FUNC1(1, 0, "flash partition table overflow?");

		s += w;
	}

	s++;

	FUNC2(s, 0xff, end-s);

	return entry;
}