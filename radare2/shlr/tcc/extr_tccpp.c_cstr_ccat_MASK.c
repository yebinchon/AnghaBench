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
struct TYPE_4__ {int size; int size_allocated; scalar_t__ data; } ;
typedef  TYPE_1__ CString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

void FUNC1(CString *cstr, int ch)
{
	int size;
	size = cstr->size + 1;
	if (size > cstr->size_allocated) {
		FUNC0 (cstr, size);
	}
	((unsigned char *) cstr->data)[size - 1] = ch;
	cstr->size = size;
}