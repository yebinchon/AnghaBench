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
typedef  size_t uint32_t ;
struct tffs_key_name_table {size_t size; TYPE_1__* entries; } ;
struct TYPE_2__ {char* val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void FUNC1(struct tffs_key_name_table *key_names)
{
	for (uint32_t i = 0; i < key_names->size; i++)
		FUNC0("%s\n", key_names->entries[i].val);
}