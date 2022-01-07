
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int want_redraw_notification; int lock; struct osd_object** objs; } ;
struct osd_object {int osd_changed; int text; } ;


 size_t OSDTYPE_OSD ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (int ,char const*) ;
 int talloc_free (int ) ;
 int talloc_strdup (struct osd_object*,char const*) ;

void osd_set_text(struct osd_state *osd, const char *text)
{
    pthread_mutex_lock(&osd->lock);
    struct osd_object *osd_obj = osd->objs[OSDTYPE_OSD];
    if (!text)
        text = "";
    if (strcmp(osd_obj->text, text) != 0) {
        talloc_free(osd_obj->text);
        osd_obj->text = talloc_strdup(osd_obj, text);
        osd_obj->osd_changed = 1;
        osd->want_redraw_notification = 1;
    }
    pthread_mutex_unlock(&osd->lock);
}
