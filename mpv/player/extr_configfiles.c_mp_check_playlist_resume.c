
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct playlist_entry {int filename; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* first; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {int position_resume; } ;


 char* mp_get_playback_resume_config_filename (struct MPContext*,int ) ;
 scalar_t__ mp_path_exists (char*) ;
 int talloc_free (char*) ;

struct playlist_entry *mp_check_playlist_resume(struct MPContext *mpctx,
                                                struct playlist *playlist)
{
    if (!mpctx->opts->position_resume)
        return ((void*)0);
    for (struct playlist_entry *e = playlist->first; e; e = e->next) {
        char *conf = mp_get_playback_resume_config_filename(mpctx, e->filename);
        bool exists = conf && mp_path_exists(conf);
        talloc_free(conf);
        if (exists)
            return e;
    }
    return ((void*)0);
}
