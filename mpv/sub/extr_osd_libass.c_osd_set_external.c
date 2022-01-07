
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int want_redraw_notification; int lock; struct osd_object** objs; } ;
struct osd_object {int num_externals; int changed; struct osd_external* externals; } ;
struct osd_external {void* id; int res_x; int res_y; scalar_t__ text; } ;


 int MP_TARRAY_APPEND (struct osd_object*,struct osd_external*,int,struct osd_external) ;
 int MP_TARRAY_REMOVE_AT (struct osd_external*,int,int) ;
 size_t OSDTYPE_EXTERNAL ;
 int destroy_external (struct osd_external*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int talloc_free (scalar_t__) ;
 scalar_t__ talloc_strdup (int *,char*) ;
 int update_external (struct osd_state*,struct osd_object*,struct osd_external*) ;

void osd_set_external(struct osd_state *osd, void *id, int res_x, int res_y,
                      char *text)
{
    pthread_mutex_lock(&osd->lock);
    struct osd_object *obj = osd->objs[OSDTYPE_EXTERNAL];
    struct osd_external *entry = 0;
    for (int n = 0; n < obj->num_externals; n++) {
        if (obj->externals[n].id == id) {
            entry = &obj->externals[n];
            break;
        }
    }
    if (!entry && !text)
        goto done;

    if (!entry) {
        struct osd_external new = { .id = id };
        MP_TARRAY_APPEND(obj, obj->externals, obj->num_externals, new);
        entry = &obj->externals[obj->num_externals - 1];
    }

    if (!text) {
        int index = entry - &obj->externals[0];
        destroy_external(entry);
        MP_TARRAY_REMOVE_AT(obj->externals, obj->num_externals, index);
        obj->changed = 1;
        osd->want_redraw_notification = 1;
        goto done;
    }

    if (!entry->text || strcmp(entry->text, text) != 0 ||
        entry->res_x != res_x || entry->res_y != res_y)
    {
        talloc_free(entry->text);
        entry->text = talloc_strdup(((void*)0), text);
        entry->res_x = res_x;
        entry->res_y = res_y;
        update_external(osd, obj, entry);
        obj->changed = 1;
        osd->want_redraw_notification = 1;
    }

done:
    pthread_mutex_unlock(&osd->lock);
}
