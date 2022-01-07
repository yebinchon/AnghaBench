
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_source {int media_list_player; } ;


 int libvlc_media_list_player_pause_ (int ) ;

__attribute__((used)) static void vlcs_play_pause(void *data)
{
 struct vlc_source *c = data;

 libvlc_media_list_player_pause_(c->media_list_player);
}
