
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_source {int source; int loop; } ;
struct libvlc_event_t {int dummy; } ;


 int UNUSED_PARAMETER (struct libvlc_event_t const*) ;
 int obs_source_output_video (int ,int *) ;

__attribute__((used)) static void vlcs_stopped(const struct libvlc_event_t *event, void *data)
{
 struct vlc_source *c = data;
 if (!c->loop)
  obs_source_output_video(c->source, ((void*)0));

 UNUSED_PARAMETER(event);
}
