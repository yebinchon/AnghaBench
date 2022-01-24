#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct image_source {struct image_source* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct image_source*) ; 
 int /*<<< orphan*/  FUNC1 (struct image_source*) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct image_source *context = data;

	FUNC1(context);

	if (context->file)
		FUNC0(context->file);
	FUNC0(context);
}