
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct osd_state {int lock; struct osd_object** objs; } ;
struct TYPE_5__ {TYPE_2__* track; } ;
struct osd_object {TYPE_1__ ass; } ;
struct TYPE_7__ {int MarginV; int FontSize; } ;
struct TYPE_6__ {int PlayResY; } ;
typedef TYPE_3__ ASS_Style ;


 size_t OSDTYPE_OSD ;
 TYPE_3__* prepare_osd_ass (struct osd_state*,struct osd_object*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void osd_get_text_size(struct osd_state *osd, int *out_screen_h, int *out_font_h)
{
    pthread_mutex_lock(&osd->lock);
    struct osd_object *obj = osd->objs[OSDTYPE_OSD];
    ASS_Style *style = prepare_osd_ass(osd, obj);
    *out_screen_h = obj->ass.track->PlayResY - style->MarginV;
    *out_font_h = style->FontSize;
    pthread_mutex_unlock(&osd->lock);
}
