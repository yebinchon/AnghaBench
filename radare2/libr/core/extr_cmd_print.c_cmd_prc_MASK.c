#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ut8 ;
typedef  int ut32 ;
struct TYPE_8__ {int /*<<< orphan*/  io; int /*<<< orphan*/  (* is_valid_offset ) (int /*<<< orphan*/ ,scalar_t__,int) ;} ;
struct TYPE_11__ {int cur_enabled; int flags; int cur; char io_unalloc_ch; TYPE_1__ iob; } ;
struct TYPE_10__ {scalar_t__ offset; int /*<<< orphan*/  flags; TYPE_4__* print; int /*<<< orphan*/  config; } ;
struct TYPE_9__ {char* name; } ;
typedef  TYPE_2__ RFlagItem ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 char* Color_RESET ; 
 int R_PRINT_FLAGS_UNALLOC ; 
 int* colormap ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (TYPE_3__*,scalar_t__) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__) ; 
 char* FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC12(RCore *core, const ut8* block, int len) {
	const char *chars = " .,:;!O@#";
	bool square = FUNC1 (core->config, "scr.square");
	int i, j;
	char ch, ch2, *color;
	int cols = FUNC1 (core->config, "hex.cols");
	bool show_color = FUNC1 (core->config, "scr.color");
	bool show_flags = FUNC1 (core->config, "asm.flags");
	bool show_section = FUNC1 (core->config, "hex.section");
	bool show_cursor = core->print->cur_enabled;
	bool show_unalloc = core->print->flags & R_PRINT_FLAGS_UNALLOC;
	if (cols < 1 || cols > 0xfffff) {
		cols = 32;
	}
	for (i = 0; i < len; i += cols) {
		if (show_section) {
			const char * name = FUNC5 (core, core->offset + i);
			FUNC4 ("%20s ", name? name: "");
		}
		FUNC7 (core->print, core->offset + i);
		for (j = i; j < i + cols; j ++) {
			if (j >= len) {
				break;
			}
			if (show_color) {
				ut32 color_val = colormap[block[j]];
				int brightness = ((color_val & 0xff0000) >> 16)
				                + 2 * ((color_val & 0xff00) >> 8) + (color_val & 0xff) / 2;
				char *str = FUNC8 ("rgb:%s rgb:%06x",
					brightness <= 0x7f * 3 ? "fff" : "000", color_val);
				color = FUNC3 (str, NULL);
				FUNC0 (str);
				if (show_cursor && core->print->cur == j) {
					ch = '_';
				} else {
					ch = ' ';
				}
			} else {
				color = FUNC9 ("");
				if (show_cursor && core->print->cur == j) {
					ch = '_';
				} else {
					const int idx = ((float)block[j] / 255) * (FUNC10 (chars) - 1);
					ch = chars[idx];
				}
			}
			if (show_unalloc &&
			    !core->print->iob.is_valid_offset (core->print->iob.io, core->offset + j, false)) {
				if (show_color) {
					FUNC0 (color);
					color = FUNC9 (Color_RESET);
					ch = core->print->io_unalloc_ch;
					if (ch == ' ') {
						ch = '.';
					}
				} else {
					ch = '?'; // deliberately ignores io.unalloc.ch
				}
			}
			if (square) {
				if (show_flags) {
					RFlagItem *fi = FUNC6 (core->flags, core->offset + j);
					if (fi) {
						ch = fi->name[0];
						ch2 = fi->name[1];
					} else {
						ch2 = ch;
					}
				} else {
					ch2 = ch;
				}
				FUNC4 ("%s%c%c", color, ch, ch2);
			} else {
				FUNC4 ("%s%c", color, ch);
			}
			FUNC0 (color);
		}
		if (show_color) {
			FUNC4 (Color_RESET);
		}
		FUNC2 ();
	}
}