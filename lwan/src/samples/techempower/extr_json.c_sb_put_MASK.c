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
struct TYPE_4__ {size_t cur; } ;
typedef  TYPE_1__ SB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 

__attribute__((used)) static void FUNC2(SB *sb, const char *bytes, size_t count)
{
	FUNC1(sb, count);
	FUNC0(sb->cur, bytes, count);
	sb->cur += count;
}