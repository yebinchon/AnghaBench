#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  ofs; } ;
typedef  TYPE_1__ zend_elf_sectheader ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,void*,scalar_t__) ; 

__attribute__((used)) static void* FUNC4(int fd, zend_elf_sectheader *sect)
{
	void *s = FUNC1(sect->size);

	if (FUNC2(fd, sect->ofs, SEEK_SET) < 0) {
		FUNC0(s);
		return NULL;
	}
	if (FUNC3(fd, s, sect->size) != (ssize_t)sect->size) {
		FUNC0(s);
		return NULL;
	}

	return s;
}