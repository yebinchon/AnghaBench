#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_6__ {int cx; int cy; int loaded; int /*<<< orphan*/  texture_data; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ gs_image_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(gs_image_file_t *image,
					const char *file, uint64_t *mem_usage)
{
	size_t len;

	if (!image)
		return;

	FUNC5(image, 0, sizeof(*image));

	if (!file)
		return;

	len = FUNC7(file);

	if (len > 4 && FUNC6(file + len - 4, ".gif") == 0) {
		if (FUNC4(image, file, mem_usage))
			return;
	}

	image->texture_data = FUNC1(
		file, &image->format, &image->cx, &image->cy);

	if (mem_usage) {
		*mem_usage += image->cx * image->cy *
			      FUNC2(image->format) / 8;
	}

	image->loaded = !!image->texture_data;
	if (!image->loaded) {
		FUNC0(LOG_WARNING, "Failed to load file '%s'", file);
		FUNC3(image);
	}
}