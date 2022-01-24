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
struct TYPE_2__ {int len; int num; scalar_t__* txt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* list ; 
 int list_size ; 
 scalar_t__* FUNC2 (int) ; 
 int max_size ; 
 scalar_t__ FUNC3 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC6(char *buf, int len)
{
	if (list_size != 0 &&
	    len == list[list_size-1].len &&
	    FUNC3(buf, list[list_size-1].txt, len) == 0) {
		list[list_size-1].num++;
		return;
	}
	if (list_size == max_size) {
		FUNC5("max_size too small??\n");
		FUNC0(1);
	}
	list[list_size].txt = FUNC2(len+1);
	list[list_size].len = len;
	list[list_size].num = 1;
	FUNC4(list[list_size].txt, buf, len);
	list[list_size].txt[len] = 0;
	list_size++;
	if (list_size % 1000 == 0) {
		FUNC5("loaded %d\r", list_size);
		FUNC1(stdout);
	}
}