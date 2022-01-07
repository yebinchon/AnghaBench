
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dec_sub {double video_fps; int lock; TYPE_2__* sd; } ;
typedef enum sd_ctrl { ____Placeholder_sd_ctrl } sd_ctrl ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* control ) (TYPE_2__*,int,double*) ;} ;


 int CONTROL_OK ;
 int CONTROL_UNKNOWN ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 double pts_from_subtitle (struct dec_sub*,double) ;
 double pts_to_subtitle (struct dec_sub*,double) ;
 int stub1 (TYPE_2__*,int,double*) ;
 int stub2 (TYPE_2__*,int,void*) ;
 int update_subtitle_speed (struct dec_sub*) ;

int sub_control(struct dec_sub *sub, enum sd_ctrl cmd, void *arg)
{
    int r = CONTROL_UNKNOWN;
    pthread_mutex_lock(&sub->lock);
    switch (cmd) {
    case 129:
        sub->video_fps = *(double *)arg;
        update_subtitle_speed(sub);
        break;
    case 128: {
        double *a = arg;
        double arg2[2] = {a[0], a[1]};
        arg2[0] = pts_to_subtitle(sub, arg2[0]);
        if (sub->sd->driver->control)
            r = sub->sd->driver->control(sub->sd, cmd, arg2);
        if (r == CONTROL_OK)
            a[0] = pts_from_subtitle(sub, arg2[0]);
        break;
    }
    default:
        if (sub->sd->driver->control)
            r = sub->sd->driver->control(sub->sd, cmd, arg);
    }
    pthread_mutex_unlock(&sub->lock);
    return r;
}
