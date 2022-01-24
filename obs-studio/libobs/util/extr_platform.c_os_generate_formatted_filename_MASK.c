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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct obs_video_info {int fps_den; int fps_num; int base_width; int base_height; int output_width; int output_height; int /*<<< orphan*/  output_format; } ;
struct dstr {size_t len; char* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  convert ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,struct dstr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct tm* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct obs_video_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct dstr*,size_t,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,double const,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char const*,struct tm*) ; 
 size_t FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*) ; 

char *FUNC19(const char *extension, bool space,
				     const char *format)
{
	time_t now = FUNC17(0);
	struct tm *cur_time;
	cur_time = FUNC10(&now);
	struct obs_video_info ovi;
	FUNC11(&ovi);

	const size_t spec_count = 23;
	static const char *spec[][2] = {
		{"%CCYY", "%Y"}, {"%YY", "%y"}, {"%MM", "%m"}, {"%DD", "%d"},
		{"%hh", "%H"},   {"%mm", "%M"}, {"%ss", "%S"}, {"%%", "%%"},

		{"%a", ""},      {"%A", ""},    {"%b", ""},    {"%B", ""},
		{"%d", ""},      {"%H", ""},    {"%I", ""},    {"%m", ""},
		{"%M", ""},      {"%p", ""},    {"%S", ""},    {"%y", ""},
		{"%Y", ""},      {"%z", ""},    {"%Z", ""},
	};

	char convert[128] = {0};
	struct dstr sf;
	struct dstr c = {0};
	size_t pos = 0;

	FUNC5(&sf, format);

	while (pos < sf.len) {
		const char *cmp = sf.array + pos;
		for (size_t i = 0; i < spec_count && !convert[0]; i++) {
			size_t len = FUNC16(spec[i][0]);

			if (FUNC0(cmp, spec[i][0], len) == 0) {
				if (FUNC16(spec[i][1]))
					FUNC15(convert, sizeof(convert),
						 spec[i][1], cur_time);
				else
					FUNC15(convert, sizeof(convert),
						 spec[i][0], cur_time);

				FUNC3(&c, convert);
				if (c.len && FUNC18(c.array))
					FUNC12(&sf, pos, len, convert);
			}
		}

		if (!convert[0]) {
			if (FUNC0(cmp, "%FPS", 4) == 0) {
				if (ovi.fps_den <= 1) {
					FUNC13(convert, "%u", ovi.fps_num);
				} else {
					const double obsFPS =
						(double)ovi.fps_num /
						(double)ovi.fps_den;
					FUNC13(convert, "%.2f", obsFPS);
				}
				FUNC12(&sf, pos, 4, convert);

			} else if (FUNC0(cmp, "%CRES", 5) == 0) {
				FUNC13(convert, "%ux%u", ovi.base_width,
					ovi.base_height);
				FUNC12(&sf, pos, 5, convert);

			} else if (FUNC0(cmp, "%ORES", 5) == 0) {
				FUNC13(convert, "%ux%u", ovi.output_width,
					ovi.output_height);
				FUNC12(&sf, pos, 5, convert);

			} else if (FUNC0(cmp, "%VF", 3) == 0) {
				FUNC14(convert, FUNC9(
							ovi.output_format));
				FUNC12(&sf, pos, 3, convert);
			}
		}

		if (convert[0]) {
			pos += FUNC16(convert);
			convert[0] = 0;
		} else if (!convert[0] && sf.array[pos] == '%') {
			FUNC8(&sf, pos);
		} else {
			pos++;
		}
	}

	if (!space)
		FUNC7(&sf, " ", "_");

	FUNC2(&sf, '.');
	FUNC1(&sf, extension);
	FUNC4(&c);

	if (sf.len > 255)
		FUNC6(&sf, &sf, 0, 255);

	return sf.array;
}