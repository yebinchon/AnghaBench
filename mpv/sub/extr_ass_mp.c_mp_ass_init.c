
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
typedef int ASS_Library ;


 int abort () ;
 int * ass_library_init () ;
 int ass_set_fonts_dir (int *,char*) ;
 int ass_set_message_cb (int *,int ,struct mp_log*) ;
 int message_callback ;
 char* mp_find_config_file (int *,struct mpv_global*,char*) ;
 int talloc_free (char*) ;

ASS_Library *mp_ass_init(struct mpv_global *global, struct mp_log *log)
{
    char *path = mp_find_config_file(((void*)0), global, "fonts");
    ASS_Library *priv = ass_library_init();
    if (!priv)
        abort();
    ass_set_message_cb(priv, message_callback, log);
    if (path)
        ass_set_fonts_dir(priv, path);
    talloc_free(path);
    return priv;
}
