
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct osd_state {int dummy; } ;
struct osd_object {int vo_res; } ;
struct ass_state {int library; TYPE_1__* track; } ;
struct TYPE_3__ {int Timer; int WrapStyle; int Kerning; int track_type; } ;
typedef TYPE_1__ ASS_Track ;


 int TRACK_TYPE_ASS ;
 TYPE_1__* ass_new_track (int ) ;
 int create_ass_renderer (struct osd_state*,struct ass_state*) ;
 int update_playres (struct ass_state*,int *) ;

__attribute__((used)) static void create_ass_track(struct osd_state *osd, struct osd_object *obj,
                             struct ass_state *ass)
{
    create_ass_renderer(osd, ass);

    ASS_Track *track = ass->track;
    if (!track)
        track = ass->track = ass_new_track(ass->library);

    track->track_type = TRACK_TYPE_ASS;
    track->Timer = 100.;
    track->WrapStyle = 1;
    track->Kerning = 1;

    update_playres(ass, &obj->vo_res);
}
