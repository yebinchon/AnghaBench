
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_osd_res {int display_par; int h; int w; } ;
struct ass_state {int track; int render; } ;
typedef int ASS_Image ;


 int * ass_render_frame (int ,int ,int ,int*) ;
 int ass_set_aspect_ratio (int ,int ,double) ;
 int ass_set_frame_size (int ,int ,int ) ;
 int update_playres (struct ass_state*,struct mp_osd_res*) ;

__attribute__((used)) static void append_ass(struct ass_state *ass, struct mp_osd_res *res,
                       ASS_Image **img_list, bool *changed)
{
    if (!ass->render || !ass->track) {
        *img_list = ((void*)0);
        return;
    }

    update_playres(ass, res);

    ass_set_frame_size(ass->render, res->w, res->h);
    ass_set_aspect_ratio(ass->render, res->display_par, 1.0);

    int ass_changed;
    *img_list = ass_render_frame(ass->render, ass->track, 0, &ass_changed);
    *changed |= ass_changed;
}
