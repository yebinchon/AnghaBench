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
typedef  int /*<<< orphan*/  ptr ;
typedef  scalar_t__ int32 ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int32
FUNC1(StringInfo buf)
{
	int32		pos = buf->len;
	int32		ptr = 0;

	FUNC0(buf, (char *) &ptr, sizeof(ptr));

	return pos;
}