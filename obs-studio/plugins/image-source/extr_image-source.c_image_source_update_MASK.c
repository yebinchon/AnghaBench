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
struct image_source {int persistent; int /*<<< orphan*/  source; int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *data, obs_data_t *settings)
{
	struct image_source *context = data;
	const char *file = FUNC5(settings, "file");
	const bool unload = FUNC4(settings, "unload");

	if (context->file)
		FUNC0(context->file);
	context->file = FUNC1(file);
	context->persistent = !unload;

	/* Load the image if the source is persistent or showing */
	if (context->persistent || FUNC6(context->source))
		FUNC2(data);
	else
		FUNC3(data);
}