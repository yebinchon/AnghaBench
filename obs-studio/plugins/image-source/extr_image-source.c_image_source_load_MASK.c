#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  loaded; } ;
struct TYPE_6__ {TYPE_1__ image; } ;
struct image_source {char* file; TYPE_2__ if2; scalar_t__ update_time_elapsed; int /*<<< orphan*/  file_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(struct image_source *context)
{
	char *file = context->file;

	FUNC5();
	FUNC2(&context->if2);
	FUNC6();

	if (file && *file) {
		FUNC0("loading texture '%s'", file);
		context->file_timestamp = FUNC1(file);
		FUNC3(&context->if2, file);
		context->update_time_elapsed = 0;

		FUNC5();
		FUNC4(&context->if2);
		FUNC6();

		if (!context->if2.image.loaded)
			FUNC7("failed to load texture '%s'", file);
	}
}