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
typedef  size_t uint32_t ;
typedef  scalar_t__ uint16_t ;
struct font_path_info {double face_len; size_t num_sizes; int bold; int italic; char* path; int /*<<< orphan*/  index; scalar_t__* sizes; scalar_t__ is_bitmap; } ;
struct dstr {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {size_t num; struct font_path_info* array; } ;
typedef  int /*<<< orphan*/  FT_Long ;

/* Variables and functions */
 size_t OBS_FONT_BOLD ; 
 size_t OBS_FONT_ITALIC ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,char*,char*) ; 
 TYPE_1__ font_list ; 
 scalar_t__ FUNC8 (struct font_path_info*,struct dstr*) ; 

const char *FUNC9(const char *family, uint16_t size, const char *style,
			  uint32_t flags, FT_Long *idx)
{
	const char *best_path = NULL;
	double best_rating = 0.0;
	struct dstr face_and_style = {0};
	struct dstr style_str = {0};
	bool bold = !!(flags & OBS_FONT_BOLD);
	bool italic = !!(flags & OBS_FONT_ITALIC);

	if (!family || !*family)
		return NULL;

	if (style) {
		FUNC3(&style_str, style);
		FUNC7(&style_str, "Bold", "");
		FUNC7(&style_str, "Italic", "");
		FUNC7(&style_str, "  ", " ");
		FUNC4(&style_str);
	}

	FUNC3(&face_and_style, family);
	if (!FUNC6(&style_str)) {
		FUNC1(&face_and_style, " ");
		FUNC2(&face_and_style, &style_str);
	}

	for (size_t i = 0; i < font_list.num; i++) {
		struct font_path_info *info = font_list.array + i;

		double rating = (double)FUNC8(info, &face_and_style);
		if (rating < info->face_len)
			continue;

		if (info->is_bitmap) {
			int best_diff = 1000;
			for (uint32_t j = 0; j < info->num_sizes; j++) {
				int diff = FUNC0(info->sizes[j] - size);
				if (diff < best_diff)
					best_diff = diff;
			}

			rating /= (double)(best_diff + 1.0);
		}

		if (info->bold == bold)
			rating += 1.0;
		if (info->italic == italic)
			rating += 1.0;

		if (rating > best_rating) {
			best_path = info->path;
			*idx = info->index;
			best_rating = rating;
		}
	}

	FUNC5(&style_str);
	FUNC5(&face_and_style);
	return best_path;
}