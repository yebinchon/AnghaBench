#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* sections; struct TYPE_4__* strings; scalar_t__ fd; } ;
typedef  TYPE_1__ MyElf_File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(MyElf_File *elf) {
	if (elf) {
		FUNC0("Unloading elf file.\r\n");
		if(elf->fd) FUNC1(elf->fd);
		if(elf->strings) FUNC2(elf->strings);
		if(elf->sections) FUNC2(elf->sections);
		FUNC2(elf);
	}
}