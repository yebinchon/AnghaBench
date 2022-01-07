
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union m_option_value {int member_0; } ;
typedef int uint64_t ;
struct observe_property {int async_updating; int async_value_valid; int changed; int async_value_ts; TYPE_2__* type; int async_value; int format; int name; int async_change_ts; struct mpv_handle* owner; } ;
struct mpv_handle {int async_counter; int lock; scalar_t__ lowest_changed; int mpctx; } ;
struct getproperty_request {scalar_t__ status; union m_option_value* data; int format; int name; int mpctx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int size; } ;


 int assert (int) ;
 int getproperty_fn (struct getproperty_request*) ;
 int m_option_free (TYPE_2__*,int *) ;
 int memcpy (int *,union m_option_value*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_client (struct mpv_handle*) ;

__attribute__((used)) static void update_prop_async(void *p)
{
    struct observe_property *prop = p;
    struct mpv_handle *ctx = prop->owner;

    union m_option_value val = {0};
    bool val_valid = 0;
    uint64_t value_ts;

    pthread_mutex_lock(&ctx->lock);
    value_ts = prop->async_change_ts;
    assert(prop->async_updating);
    pthread_mutex_unlock(&ctx->lock);

    struct getproperty_request req = {
        .mpctx = ctx->mpctx,
        .name = prop->name,
        .format = prop->format,
        .data = &val,
    };
    getproperty_fn(&req);
    val_valid = req.status >= 0;

    pthread_mutex_lock(&ctx->lock);

    assert(prop->async_updating);


    m_option_free(prop->type, &prop->async_value);
    memcpy(&prop->async_value, &val, prop->type->type->size);
    prop->async_value_valid = val_valid;

    prop->async_value_ts = value_ts;
    prop->async_updating = 0;


    prop->changed = 1;
    ctx->lowest_changed = 0;

    ctx->async_counter -= 1;
    wakeup_client(ctx);

    pthread_mutex_unlock(&ctx->lock);
}
