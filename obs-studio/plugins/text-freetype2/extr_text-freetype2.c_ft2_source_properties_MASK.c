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
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PATH_FILE ; 
 int /*<<< orphan*/  OBS_TEXT_MULTILINE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *unused)
{
	FUNC0(unused);

	obs_properties_t *props = FUNC8();
	//obs_property_t *prop;

	// TODO:
	//	Scrolling. Can't think of a way to do it with the render
	//		targets currently being broken. (0.4.2)
	//	Better/pixel shader outline/drop shadow
	//	Some way to pull text files from network, I dunno

	FUNC4(props, "font", FUNC1("Font"));

	FUNC7(props, "text", FUNC1("Text"),
				OBS_TEXT_MULTILINE);

	FUNC2(props, "from_file",
				FUNC1("ReadFromFile"));

	FUNC2(props, "log_mode",
				FUNC1("ChatLogMode"));

	FUNC5(props, "log_lines",
			       FUNC1("ChatLogLines"), 1, 1000, 1);

	FUNC6(props, "text_file", FUNC1("TextFile"),
				OBS_PATH_FILE,
				FUNC1("TextFileFilter"), NULL);

	FUNC3(props, "color1", FUNC1("Color1"));

	FUNC3(props, "color2", FUNC1("Color2"));

	FUNC2(props, "outline", FUNC1("Outline"));

	FUNC2(props, "drop_shadow",
				FUNC1("DropShadow"));

	FUNC5(props, "custom_width",
			       FUNC1("CustomWidth"), 0, 4096, 1);

	FUNC2(props, "word_wrap",
				FUNC1("WordWrap"));

	return props;
}