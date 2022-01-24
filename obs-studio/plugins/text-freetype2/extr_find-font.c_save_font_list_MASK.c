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
typedef  int uint32_t ;
struct serializer {int dummy; } ;
struct font_path_info {int full_len; int face_len; int is_bitmap; int num_sizes; int bold; int italic; int index; int /*<<< orphan*/  path; int /*<<< orphan*/  sizes; int /*<<< orphan*/  face_and_style; } ;
struct TYPE_2__ {size_t num; struct font_path_info* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct serializer*) ; 
 int FUNC3 (struct serializer*,char*,char*) ; 
 int font_cache_ver ; 
 TYPE_1__ font_list ; 
 int FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (struct serializer*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct serializer*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct serializer*,int) ; 

void FUNC9(void)
{
	char *file_name = FUNC5("font_data.bin");
	uint32_t font_checksum = FUNC4();
	int font_count = (int)font_list.num;
	struct serializer s;
	bool success = false;

	if (font_checksum)
		success =
			FUNC3(&s, file_name, "tmp");
	FUNC0(file_name);

	if (!success)
		return;

	success = FUNC8(&s, font_cache_ver);
	if (!success)
		return;
	success = FUNC8(&s, font_checksum);
	if (!success)
		return;
	success = FUNC8(&s, font_count);
	if (!success)
		return;

#define do_write(var)                 \
	success = write_var(&s, var); \
	if (!success)                 \
	break

	for (size_t i = 0; i < font_list.num; i++) {
		struct font_path_info *info = &font_list.array[i];

		success = FUNC7(&s, info->face_and_style);
		if (!success)
			break;

		do_write(info->full_len);
		do_write(info->face_len);
		do_write(info->is_bitmap);
		do_write(info->num_sizes);

		success = FUNC6(&s, info->sizes,
				     sizeof(int) * info->num_sizes);
		if (!success)
			break;

		do_write(info->bold);

		success = FUNC7(&s, info->path);
		if (!success)
			break;

		do_write(info->italic);
		do_write(info->index);
	}

#undef do_write

	FUNC2(&s);
}