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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct ft2_source {int custom_width; int word_wrap; int* color; int log_lines; int log_mode; scalar_t__ font_size; int from_file; int file_load_failed; char const* font_name; char const* font_style; int font_flags; char* texbuf; char* text; char const* text_file; int /*<<< orphan*/ * font_face; int /*<<< orphan*/  last_checked; scalar_t__ max_h; int /*<<< orphan*/ * draw_effect; void* outline_text; void* drop_shadow; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FT_ENCODING_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 void* FUNC4 (char const*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ft2_source*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ft2_source*) ; 
 int /*<<< orphan*/ * ft2_lib ; 
 int /*<<< orphan*/ * FUNC8 (char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (struct ft2_source*) ; 
 int /*<<< orphan*/  FUNC10 (struct ft2_source*,char const*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char const*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC22 (struct ft2_source*,char const*) ; 
 int /*<<< orphan*/  FUNC23 (struct ft2_source*) ; 
 scalar_t__ FUNC24 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 int texbuf_h ; 
 int texbuf_w ; 

__attribute__((used)) static void FUNC26(void *data, obs_data_t *settings)
{
	struct ft2_source *srcdata = data;
	obs_data_t *font_obj = FUNC13(settings, "font");
	bool vbuf_needs_update = false;
	bool word_wrap = false;
	uint32_t color[2];
	uint32_t custom_width = 0;

	const char *font_name = FUNC14(font_obj, "face");
	const char *font_style = FUNC14(font_obj, "style");
	uint16_t font_size = (uint16_t)FUNC12(font_obj, "size");
	uint32_t font_flags = (uint32_t)FUNC12(font_obj, "flags");

	if (!font_obj)
		return;

	srcdata->drop_shadow = FUNC11(settings, "drop_shadow");
	srcdata->outline_text = FUNC11(settings, "outline");
	word_wrap = FUNC11(settings, "word_wrap");

	color[0] = (uint32_t)FUNC12(settings, "color1");
	color[1] = (uint32_t)FUNC12(settings, "color2");

	custom_width = (uint32_t)FUNC12(settings, "custom_width");
	if (custom_width >= 100) {
		if (custom_width != srcdata->custom_width) {
			srcdata->custom_width = custom_width;
			vbuf_needs_update = true;
		}
	} else {
		if (srcdata->custom_width >= 100)
			vbuf_needs_update = true;
		srcdata->custom_width = 0;
	}

	if (word_wrap != srcdata->word_wrap) {
		srcdata->word_wrap = word_wrap;
		vbuf_needs_update = true;
	}

	if (color[0] != srcdata->color[0] || color[1] != srcdata->color[1]) {
		srcdata->color[0] = color[0];
		srcdata->color[1] = color[1];
		vbuf_needs_update = true;
	}

	bool from_file = FUNC11(settings, "from_file");
	bool chat_log_mode = FUNC11(settings, "log_mode");
	uint32_t log_lines = (uint32_t)FUNC12(settings, "log_lines");

	if (srcdata->log_lines != log_lines) {
		srcdata->log_lines = log_lines;
		vbuf_needs_update = true;
	}
	srcdata->log_mode = chat_log_mode;

	if (ft2_lib == NULL)
		goto error;

	if (srcdata->draw_effect == NULL) {
		char *effect_file = NULL;
		char *error_string = NULL;

		effect_file = FUNC18("text_default.effect");

		if (effect_file) {
			FUNC16();
			srcdata->draw_effect = FUNC8(
				effect_file, &error_string);
			FUNC17();

			FUNC2(effect_file);
			if (error_string != NULL)
				FUNC2(error_string);
		}
	}

	if (srcdata->font_size != font_size || srcdata->from_file != from_file)
		vbuf_needs_update = true;

	srcdata->file_load_failed = false;
	srcdata->from_file = from_file;

	if (srcdata->font_name != NULL) {
		if (FUNC24(font_name, srcdata->font_name) == 0 &&
		    FUNC24(font_style, srcdata->font_style) == 0 &&
		    font_flags == srcdata->font_flags &&
		    font_size == srcdata->font_size)
			goto skip_font_load;

		FUNC2(srcdata->font_name);
		FUNC2(srcdata->font_style);
		srcdata->font_name = NULL;
		srcdata->font_style = NULL;
		srcdata->max_h = 0;
		vbuf_needs_update = true;
	}

	srcdata->font_name = FUNC4(font_name);
	srcdata->font_style = FUNC4(font_style);
	srcdata->font_size = font_size;
	srcdata->font_flags = font_flags;

	if (!FUNC9(srcdata) || srcdata->font_face == NULL) {
		FUNC3(LOG_WARNING, "FT2-text: Failed to load font %s",
		     srcdata->font_name);
		goto error;
	} else {
		FUNC1(srcdata->font_face, 0, srcdata->font_size);
		FUNC0(srcdata->font_face, FT_ENCODING_UNICODE);
	}

	if (srcdata->texbuf != NULL) {
		FUNC2(srcdata->texbuf);
		srcdata->texbuf = NULL;
	}
	srcdata->texbuf = FUNC5(texbuf_w * texbuf_h);

	if (srcdata->font_face)
		FUNC7(srcdata);

skip_font_load:
	if (from_file) {
		const char *tmp = FUNC14(settings, "text_file");

		if (!tmp || !*tmp || !FUNC19(tmp)) {
			const char *emptystr = " ";

			FUNC2(srcdata->text);
			srcdata->text = NULL;

			FUNC21(emptystr, FUNC25(emptystr),
					   &srcdata->text);
			FUNC3(LOG_WARNING,
			     "FT2-text: Failed to open %s for "
			     "reading",
			     tmp);
		} else {
			if (srcdata->text_file != NULL &&
			    FUNC24(srcdata->text_file, tmp) == 0 &&
			    !vbuf_needs_update)
				goto error;

			FUNC2(srcdata->text_file);

			srcdata->text_file = FUNC4(tmp);
			if (chat_log_mode)
				FUNC22(srcdata, tmp);
			else
				FUNC10(srcdata, tmp);
			srcdata->last_checked = FUNC20();
		}
	} else {
		const char *tmp = FUNC14(settings, "text");
		if (!tmp || !*tmp)
			goto error;

		if (srcdata->text != NULL) {
			FUNC2(srcdata->text);
			srcdata->text = NULL;
		}

		FUNC21(tmp, FUNC25(tmp), &srcdata->text);
	}

	if (srcdata->font_face) {
		FUNC6(srcdata, srcdata->text);
		FUNC23(srcdata);
	}

error:
	FUNC15(font_obj);
}