
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_source {int source; int media_list_player; } ;


 int libvlc_media_list_player_stop_ (int ) ;
 int obs_source_output_video (int ,int *) ;

__attribute__((used)) static void vlcs_stop(void *data)
{
 struct vlc_source *c = data;

 libvlc_media_list_player_stop_(c->media_list_player);
 obs_source_output_video(c->source, ((void*)0));
}
