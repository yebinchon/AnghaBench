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
struct TYPE_3__ {char* cur; char* start; } ;
typedef  TYPE_1__ SB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(SB *sb, size_t *length)
{
	*sb->cur = 0;
	FUNC0(sb->start <= sb->cur && FUNC1(sb->start) == (size_t)(sb->cur - sb->start));
	*length = (size_t)(sb->cur - sb->start);
	return sb->start;
}