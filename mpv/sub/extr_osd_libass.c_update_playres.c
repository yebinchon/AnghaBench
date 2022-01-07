
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_osd_res {double w; double display_par; int h; } ;
struct ass_state {int res_y; double res_x; int render; TYPE_1__* track; } ;
struct TYPE_2__ {int PlayResX; int PlayResY; } ;
typedef TYPE_1__ ASS_Track ;


 double MPMAX (int ,int) ;
 int MP_ASS_FONT_PLAYRESY ;
 int ass_set_frame_size (int ,int,int) ;

__attribute__((used)) static void update_playres(struct ass_state *ass, struct mp_osd_res *vo_res)
{
    ASS_Track *track = ass->track;
    int old_res_x = track->PlayResX;
    int old_res_y = track->PlayResY;

    double aspect = 1.0 * vo_res->w / MPMAX(vo_res->h, 1);
    if (vo_res->display_par > 0)
        aspect = aspect / vo_res->display_par;

    track->PlayResY = ass->res_y ? ass->res_y : MP_ASS_FONT_PLAYRESY;
    track->PlayResX = ass->res_x ? ass->res_x : track->PlayResY * aspect;



    if (old_res_x != track->PlayResX || old_res_y != track->PlayResY)
        ass_set_frame_size(ass->render, 1, 1);
}
