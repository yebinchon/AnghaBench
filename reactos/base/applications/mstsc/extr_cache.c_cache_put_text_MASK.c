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
typedef  size_t uint8 ;
struct TYPE_3__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ DATABLOB ;

/* Variables and functions */
 TYPE_1__* g_textcache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

void
FUNC3(uint8 cache_id, void *data, int length)
{
	DATABLOB *text;

	text = &g_textcache[cache_id];
	if (text->data != NULL)
		FUNC1(text->data);
	text->data = FUNC2(length);
	text->size = length;
	FUNC0(text->data, data, length);
}