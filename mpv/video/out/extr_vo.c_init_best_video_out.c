
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_extra {int dummy; } ;
struct vo_driver {scalar_t__ name; } ;
struct vo {int dummy; } ;
struct mpv_global {int dummy; } ;
struct mp_vo_opts {struct m_obj_settings* video_driver_list; } ;
struct m_obj_settings {char* name; } ;


 struct mp_vo_opts* mp_get_config_group (int *,struct mpv_global*,int *) ;
 scalar_t__ strlen (char*) ;
 int talloc_free (struct mp_vo_opts*) ;
 struct vo_driver** video_out_drivers ;
 struct vo_driver const video_out_null ;
 struct vo* vo_create (int,struct mpv_global*,struct vo_extra*,char*) ;
 int vo_sub_opts ;

struct vo *init_best_video_out(struct mpv_global *global, struct vo_extra *ex)
{
    struct mp_vo_opts *opts = mp_get_config_group(((void*)0), global, &vo_sub_opts);
    struct m_obj_settings *vo_list = opts->video_driver_list;
    struct vo *vo = ((void*)0);

    if (vo_list && vo_list[0].name) {
        for (int n = 0; vo_list[n].name; n++) {

            if (strlen(vo_list[n].name) == 0)
                goto autoprobe;
            bool p = !!vo_list[n + 1].name;
            vo = vo_create(p, global, ex, vo_list[n].name);
            if (vo)
                goto done;
        }
        goto done;
    }
autoprobe:

    for (int i = 0; video_out_drivers[i]; i++) {
        const struct vo_driver *driver = video_out_drivers[i];
        if (driver == &video_out_null)
            break;
        vo = vo_create(1, global, ex, (char *)driver->name);
        if (vo)
            goto done;
    }
done:
    talloc_free(opts);
    return vo;
}
