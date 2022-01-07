
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mpv_handle {int num_properties; scalar_t__ lowest_changed; TYPE_1__** properties; } ;
struct TYPE_2__ {int event_mask; } ;


 int mark_property_changed (struct mpv_handle*,int) ;
 int wakeup_client (struct mpv_handle*) ;

__attribute__((used)) static void notify_property_events(struct mpv_handle *ctx, uint64_t event_mask)
{
    for (int i = 0; i < ctx->num_properties; i++) {
        if (ctx->properties[i]->event_mask & event_mask)
            mark_property_changed(ctx, i);
    }
    if (ctx->lowest_changed < ctx->num_properties)
        wakeup_client(ctx);
}
