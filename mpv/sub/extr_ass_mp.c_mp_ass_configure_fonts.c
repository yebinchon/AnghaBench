
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_style_opts {int font_provider; int font; } ;
struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
typedef int ASS_Renderer ;


 int ASS_FONTPROVIDER_AUTODETECT ;
 int ASS_FONTPROVIDER_FONTCONFIG ;
 int ASS_FONTPROVIDER_NONE ;
 int ass_set_fonts (int *,char*,int ,int,char*,int) ;
 char* mp_find_config_file (void*,struct mpv_global*,char*) ;
 int mp_path_exists (char*) ;
 int mp_verbose (struct mp_log*,char*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

void mp_ass_configure_fonts(ASS_Renderer *priv, struct osd_style_opts *opts,
                            struct mpv_global *global, struct mp_log *log)
{
    void *tmp = talloc_new(((void*)0));
    char *default_font = mp_find_config_file(tmp, global, "subfont.ttf");
    char *config = mp_find_config_file(tmp, global, "fonts.conf");

    if (default_font && !mp_path_exists(default_font))
        default_font = ((void*)0);

    int font_provider = ASS_FONTPROVIDER_AUTODETECT;
    if (opts->font_provider == 1)
        font_provider = ASS_FONTPROVIDER_NONE;
    if (opts->font_provider == 2)
        font_provider = ASS_FONTPROVIDER_FONTCONFIG;

    mp_verbose(log, "Setting up fonts...\n");
    ass_set_fonts(priv, default_font, opts->font, font_provider, config, 1);
    mp_verbose(log, "Done.\n");

    talloc_free(tmp);
}
