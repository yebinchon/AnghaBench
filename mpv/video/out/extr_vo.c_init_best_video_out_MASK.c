#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo_extra {int dummy; } ;
struct vo_driver {scalar_t__ name; } ;
struct vo {int dummy; } ;
struct mpv_global {int dummy; } ;
struct mp_vo_opts {struct m_obj_settings* video_driver_list; } ;
struct m_obj_settings {char* name; } ;

/* Variables and functions */
 struct mp_vo_opts* FUNC0 (int /*<<< orphan*/ *,struct mpv_global*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_vo_opts*) ; 
 struct vo_driver** video_out_drivers ; 
 struct vo_driver const video_out_null ; 
 struct vo* FUNC3 (int,struct mpv_global*,struct vo_extra*,char*) ; 
 int /*<<< orphan*/  vo_sub_opts ; 

struct vo *FUNC4(struct mpv_global *global, struct vo_extra *ex)
{
    struct mp_vo_opts *opts = FUNC0(NULL, global, &vo_sub_opts);
    struct m_obj_settings *vo_list = opts->video_driver_list;
    struct vo *vo = NULL;
    // first try the preferred drivers, with their optional subdevice param:
    if (vo_list && vo_list[0].name) {
        for (int n = 0; vo_list[n].name; n++) {
            // Something like "-vo name," allows fallback to autoprobing.
            if (FUNC1(vo_list[n].name) == 0)
                goto autoprobe;
            bool p = !!vo_list[n + 1].name;
            vo = FUNC3(p, global, ex, vo_list[n].name);
            if (vo)
                goto done;
        }
        goto done;
    }
autoprobe:
    // now try the rest...
    for (int i = 0; video_out_drivers[i]; i++) {
        const struct vo_driver *driver = video_out_drivers[i];
        if (driver == &video_out_null)
            break;
        vo = FUNC3(true, global, ex, (char *)driver->name);
        if (vo)
            goto done;
    }
done:
    FUNC2(opts);
    return vo;
}