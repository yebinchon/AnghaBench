
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bluray_priv_s {scalar_t__ cfg_title; int cfg_playlist; int current_title; int bd; } ;
struct TYPE_4__ {struct bluray_priv_s* priv; } ;
typedef TYPE_1__ stream_t ;


 scalar_t__ BLURAY_DEFAULT_TITLE ;
 scalar_t__ BLURAY_PLAYLIST_TITLE ;
 int MP_WARN (TYPE_1__*,char*,int) ;
 void* bd_get_current_title (int ) ;
 int play_playlist (struct bluray_priv_s*,int) ;
 scalar_t__ play_title (struct bluray_priv_s*,int) ;

__attribute__((used)) static void select_initial_title(stream_t *s, int title_guess) {
    struct bluray_priv_s *b = s->priv;

    if (b->cfg_title == BLURAY_PLAYLIST_TITLE) {
        if (!play_playlist(b, b->cfg_playlist))
            MP_WARN(s, "Couldn't start playlist '%05d'.\n", b->cfg_playlist);
        b->current_title = bd_get_current_title(b->bd);
    } else {
        int title = -1;
        if (b->cfg_title != BLURAY_DEFAULT_TITLE )
            title = b->cfg_title;
        else
            title = title_guess;
        if (title < 0)
            return;

        if (play_title(b, title))
            b->current_title = title;
        else {
            MP_WARN(s, "Couldn't start title '%d'.\n", title);
            b->current_title = bd_get_current_title(b->bd);
        }
    }
}
