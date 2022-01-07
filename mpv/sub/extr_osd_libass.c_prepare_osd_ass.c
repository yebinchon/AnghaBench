
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct osd_style_opts {int font_size; } ;
struct osd_state {struct mp_osd_render_opts* opts; } ;
struct TYPE_7__ {TYPE_1__* track; } ;
struct TYPE_6__ {double h; } ;
struct osd_object {TYPE_3__ ass; TYPE_2__ vo_res; } ;
struct mp_osd_render_opts {int osd_scale_by_window; int osd_scale; struct osd_style_opts* osd_style; } ;
struct TYPE_5__ {double PlayResY; } ;
typedef int ASS_Style ;


 int create_ass_track (struct osd_state*,struct osd_object*,TYPE_3__*) ;
 int * get_style (TYPE_3__*,char*) ;
 int mp_ass_set_style (int *,double,struct osd_style_opts*) ;

__attribute__((used)) static ASS_Style *prepare_osd_ass(struct osd_state *osd, struct osd_object *obj)
{
    struct mp_osd_render_opts *opts = osd->opts;

    create_ass_track(osd, obj, &obj->ass);

    struct osd_style_opts font = *opts->osd_style;
    font.font_size *= opts->osd_scale;

    double playresy = obj->ass.track->PlayResY;

    if (!opts->osd_scale_by_window)
        playresy *= 720.0 / obj->vo_res.h;

    ASS_Style *style = get_style(&obj->ass, "OSD");
    mp_ass_set_style(style, playresy, &font);
    return style;
}
