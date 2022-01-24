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
struct TYPE_2__ {int /*<<< orphan*/  da; } ;
struct slideshow {int /*<<< orphan*/  mutex; TYPE_1__ files; int /*<<< orphan*/  transition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slideshow*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct slideshow *ss = data;

	FUNC2(ss->transition);
	FUNC1(&ss->files.da);
	FUNC3(&ss->mutex);
	FUNC0(ss);
}