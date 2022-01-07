
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union m_option_value {int member_0; } ;
struct observe_property {scalar_t__ async_change_ts; scalar_t__ async_value_ts; int async_updating; int async_value_valid; int value_valid; TYPE_4__* type; union m_option_value value; int format; int name; int async_value; } ;
struct mpv_handle {int async_counter; int lock; TYPE_2__* mpctx; TYPE_1__* clients; } ;
struct getproperty_request {scalar_t__ status; union m_option_value* data; int format; int name; TYPE_2__* mpctx; } ;
struct TYPE_9__ {TYPE_3__* type; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_7__ {int dispatch; } ;
struct TYPE_6__ {int uses_vo_libmpv; } ;


 scalar_t__ atomic_load_explicit (int *,int ) ;
 int equal_mpv_value (union m_option_value*,union m_option_value*,int ) ;
 int getproperty_fn ;
 int m_option_copy (TYPE_4__*,union m_option_value*,int *) ;
 int m_option_free (TYPE_4__*,union m_option_value*) ;
 int memcpy (union m_option_value*,union m_option_value*,int ) ;
 int memory_order_relaxed ;
 int mp_dispatch_enqueue (int ,int ,struct observe_property*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int run_locked (struct mpv_handle*,int ,struct getproperty_request*) ;
 int update_prop_async ;

__attribute__((used)) static bool update_prop(struct mpv_handle *ctx, struct observe_property *prop)
{
    if (!prop->type)
        return 1;

    union m_option_value val = {0};
    bool val_valid = 0;




    if (atomic_load_explicit(&ctx->clients->uses_vo_libmpv, memory_order_relaxed)) {
        if (prop->async_change_ts > prop->async_value_ts) {
            if (!prop->async_updating) {
                prop->async_updating = 1;
                ctx->async_counter += 1;
                mp_dispatch_enqueue(ctx->mpctx->dispatch, update_prop_async, prop);
            }
            return 0;
        }

        m_option_copy(prop->type, &val, &prop->async_value);
        val_valid = prop->async_value_valid;
    } else {
        pthread_mutex_unlock(&ctx->lock);

        struct getproperty_request req = {
            .mpctx = ctx->mpctx,
            .name = prop->name,
            .format = prop->format,
            .data = &val,
        };
        run_locked(ctx, getproperty_fn, &req);
        val_valid = req.status >= 0;

        pthread_mutex_lock(&ctx->lock);
    }

    bool changed = prop->value_valid != val_valid;
    if (prop->value_valid && val_valid)
        changed = !equal_mpv_value(&prop->value, &val, prop->format);

    if (changed) {
        prop->value_valid = val_valid;
        if (val_valid) {

            m_option_free(prop->type, &prop->value);
            memcpy(&prop->value, &val, prop->type->type->size);
            val_valid = 0;
        }
    }

    if (val_valid)
        m_option_free(prop->type, &val);

    return changed;
}
