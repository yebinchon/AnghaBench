
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_source {scalar_t__ behavior; int media_list_player; } ;


 scalar_t__ BEHAVIOR_PAUSE_UNPAUSE ;
 scalar_t__ BEHAVIOR_STOP_RESTART ;
 int libvlc_media_list_player_play_ (int ) ;

__attribute__((used)) static void vlcs_activate(void *data)
{
 struct vlc_source *c = data;

 if (c->behavior == BEHAVIOR_STOP_RESTART) {
  libvlc_media_list_player_play_(c->media_list_player);

 } else if (c->behavior == BEHAVIOR_PAUSE_UNPAUSE) {
  libvlc_media_list_player_play_(c->media_list_player);
 }
}
