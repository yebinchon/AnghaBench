
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct observe_property {scalar_t__ reply_id; int dead; } ;
struct TYPE_4__ {int num_properties; int lock; struct observe_property** properties; } ;
typedef TYPE_1__ mpv_handle ;


 int mark_property_changed (TYPE_1__*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mpv_unobserve_property(mpv_handle *ctx, uint64_t userdata)
{
    pthread_mutex_lock(&ctx->lock);
    int count = 0;
    for (int n = 0; n < ctx->num_properties; n++) {
        struct observe_property *prop = ctx->properties[n];


        if (prop->reply_id == userdata && !prop->dead) {
            mark_property_changed(ctx, n);
            prop->dead = 1;
            count++;
        }
    }
    pthread_mutex_unlock(&ctx->lock);
    return count;
}
