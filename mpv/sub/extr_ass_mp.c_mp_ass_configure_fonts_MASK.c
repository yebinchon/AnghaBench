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
struct osd_style_opts {int font_provider; int /*<<< orphan*/  font; } ;
struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  ASS_Renderer ;

/* Variables and functions */
 int ASS_FONTPROVIDER_AUTODETECT ; 
 int ASS_FONTPROVIDER_FONTCONFIG ; 
 int ASS_FONTPROVIDER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char*,int) ; 
 char* FUNC1 (void*,struct mpv_global*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(ASS_Renderer *priv, struct osd_style_opts *opts,
                            struct mpv_global *global, struct mp_log *log)
{
    void *tmp = FUNC5(NULL);
    char *default_font = FUNC1(tmp, global, "subfont.ttf");
    char *config       = FUNC1(tmp, global, "fonts.conf");

    if (default_font && !FUNC2(default_font))
        default_font = NULL;

    int font_provider = ASS_FONTPROVIDER_AUTODETECT;
    if (opts->font_provider == 1)
        font_provider = ASS_FONTPROVIDER_NONE;
    if (opts->font_provider == 2)
        font_provider = ASS_FONTPROVIDER_FONTCONFIG;

    FUNC3(log, "Setting up fonts...\n");
    FUNC0(priv, default_font, opts->font, font_provider, config, 1);
    FUNC3(log, "Done.\n");

    FUNC4(tmp);
}