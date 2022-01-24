#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  size; scalar_t__ offset; } ;
typedef  TYPE_1__ MyElf_Section ;
typedef  TYPE_2__ MyElf_File ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

unsigned char* FUNC5(MyElf_File *elf, MyElf_Section *section) {

    unsigned char *data = 0;
    
	if (section->size && section->offset) {

		data = (unsigned char*)FUNC4(section->size);
		if(!data) {
	        FUNC0("Error: Out of memory!\r\n");
			return 0;
		}
            
		if(FUNC3(elf->fd, section->offset, SEEK_SET) ||
		   FUNC1(data, 1, section->size, elf->fd) != section->size) {
			FUNC0("Error: Can't read section '%s' data from elf file.\r\n", section->name);
			FUNC2(data);
			return 0;
	    }

	} else {
		FUNC0("Error: Section '%s' has no data to read.\r\n", section->name);
	}

    return data;
}