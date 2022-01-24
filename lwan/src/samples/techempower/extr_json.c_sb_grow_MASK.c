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
struct TYPE_3__ {char* cur; char* start; char* end; } ;
typedef  TYPE_1__ SB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,size_t) ; 

__attribute__((used)) static void FUNC2(SB *sb, size_t need)
{
	size_t length = (size_t)(sb->cur - sb->start);
	size_t alloc = (size_t)(sb->end - sb->start);
	
	do {
		alloc *= 2;
	} while (alloc < length + need);
	
	sb->start = (char*) FUNC1(sb->start, alloc + 1);
	if (sb->start == NULL)
		FUNC0();
	sb->cur = sb->start + length;
	sb->end = sb->start + alloc;
}