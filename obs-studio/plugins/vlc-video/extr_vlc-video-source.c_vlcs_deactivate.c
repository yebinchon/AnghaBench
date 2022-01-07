
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_source {scalar_t__ behavior; int media_list_player; int source; } ;


 scalar_t__ BEHAVIOR_PAUSE_UNPAUSE ;
 scalar_t__ BEHAVIOR_STOP_RESTART ;
 int libvlc_media_list_player_pause_ (int ) ;
 int libvlc_media_list_player_stop_ (int ) ;
 int obs_source_output_video (int ,int *) ;

__attribute__((used)) static void vlcs_deactivate(void *data)
{
 struct vlc_source *c = data;

 if (c->behavior == BEHAVIOR_STOP_RESTART) {
  libvlc_media_list_player_stop_(c->media_list_player);
  obs_source_output_video(c->source, ((void*)0));

 } else if (c->behavior == BEHAVIOR_PAUSE_UNPAUSE) {
  libvlc_media_list_player_pause_(c->media_list_player);
 }
}
