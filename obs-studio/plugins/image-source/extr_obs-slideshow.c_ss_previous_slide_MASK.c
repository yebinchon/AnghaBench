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
struct TYPE_2__ {scalar_t__ num; } ;
struct slideshow {scalar_t__ cur_item; TYPE_1__ files; int /*<<< orphan*/  transition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slideshow*,int) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct slideshow *ss = data;

	if (!ss->files.num || FUNC1(ss->transition) < 1.0f)
		return;

	if (ss->cur_item == 0)
		ss->cur_item = ss->files.num - 1;
	else
		--ss->cur_item;

	FUNC0(ss, false);
}