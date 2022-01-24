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
typedef  void* uint32_t ;
struct font_path_info {int is_bitmap; int bold; int italic; int /*<<< orphan*/  path; int /*<<< orphan*/  index; void* face_len; void* full_len; int /*<<< orphan*/  face_and_style; } ;
struct dstr {scalar_t__ len; int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int face_flags; int style_flags; scalar_t__ style_name; } ;
typedef  int /*<<< orphan*/  FT_Long ;
typedef  TYPE_1__* FT_Face ;

/* Variables and functions */
 int FT_FACE_FLAG_FIXED_SIZES ; 
 int FT_STYLE_FLAG_BOLD ; 
 int FT_STYLE_FLAG_ITALIC ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct font_path_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct font_path_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  font_list ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(FT_Face face, FT_Long idx, const char *family_in,
			  const char *style_in, const char *path)
{
	struct dstr face_and_style = {0};
	struct font_path_info info;

	if (!family_in || !path)
		return;

	FUNC5(&face_and_style, family_in);
	if (face->style_name) {
		struct dstr style = {0};

		FUNC5(&style, style_in);
		FUNC9(&style, "Bold", "");
		FUNC9(&style, "Italic", "");
		FUNC9(&style, "  ", " ");
		FUNC6(&style);

		if (!FUNC8(&style)) {
			FUNC3(&face_and_style, " ");
			FUNC4(&face_and_style, &style);
		}

		FUNC7(&style);
	}

	info.face_and_style = face_and_style.array;
	info.full_len = (uint32_t)face_and_style.len;
	info.face_len = (uint32_t)FUNC10(family_in);

	info.is_bitmap = !!(face->face_flags & FT_FACE_FLAG_FIXED_SIZES);
	info.bold = !!(face->style_flags & FT_STYLE_FLAG_BOLD);
	info.italic = !!(face->style_flags & FT_STYLE_FLAG_ITALIC);
	info.index = idx;

	info.path = FUNC0(path);

	FUNC1(&info, face);
	FUNC2(font_list, &info);

	/*blog(LOG_DEBUG, "name: %s\n\tstyle: %s\n\tpath: %s\n",
			family_in,
			style_in,
			path);*/
}