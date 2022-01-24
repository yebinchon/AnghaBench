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
struct serializer {int dummy; } ;
struct font_path_info {int full_len; int face_len; int is_bitmap; int num_sizes; int bold; int italic; int index; int /*<<< orphan*/  path; int /*<<< orphan*/  sizes; int /*<<< orphan*/  face_and_style; } ;
struct TYPE_4__ {struct font_path_info* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ font_list ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct serializer*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct serializer*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct serializer*,int) ; 

__attribute__((used)) static bool FUNC8(struct serializer *s)
{
	bool success = true;
	int count;

	success = FUNC7(s, count);
	if (!success)
		return false;

	FUNC1(font_list);
	FUNC2(font_list, count);

#define do_read(var)                \
	success = read_var(s, var); \
	if (!success)               \
	break

	for (int i = 0; i < count; i++) {
		struct font_path_info *info = &font_list.array[i];

		success = FUNC6(s, &info->face_and_style);
		if (!success)
			break;

		do_read(info->full_len);
		do_read(info->face_len);
		do_read(info->is_bitmap);
		do_read(info->num_sizes);

		info->sizes = FUNC0(sizeof(int) * info->num_sizes);
		success = FUNC5(s, info->sizes,
				    sizeof(int) * info->num_sizes);
		if (!success)
			break;

		do_read(info->bold);

		success = FUNC6(s, &info->path);
		if (!success)
			break;

		do_read(info->italic);
		do_read(info->index);
	}

#undef do_read

	if (!success) {
		FUNC4();
		return false;
	}

	return true;
}