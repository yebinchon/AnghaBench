
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_group_data {scalar_t__ udata; scalar_t__ ts; } ;
struct m_config_shadow {int num_listeners; struct m_config_group* groups; int lock; struct m_config_cache** listeners; struct m_config_data* data; } ;
struct m_config_option {int group_index; TYPE_2__* opt; struct m_group_data* data; } ;
struct m_config_group {int parent_group; TYPE_1__* group; } ;
struct m_config_data {int ts; } ;
struct m_config_cache {int wakeup_cb_ctx; int (* wakeup_cb ) (int ) ;struct m_config_data* data; } ;
struct m_config {int option_change_callback_ctx; int (* option_change_callback ) (int ,struct m_config_option*,int) ;struct m_config_shadow* shadow; } ;
struct TYPE_4__ {int flags; scalar_t__ offset; } ;
struct TYPE_3__ {int change_flags; } ;


 int UPDATE_OPTS_MASK ;
 int assert (struct m_group_data*) ;
 scalar_t__ atomic_fetch_add (int *,int) ;
 struct m_group_data* m_config_gdata (struct m_config_data*,int) ;
 int m_option_copy (TYPE_2__*,scalar_t__,struct m_group_data*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;
 int stub2 (int ,struct m_config_option*,int) ;

void m_config_notify_change_co(struct m_config *config,
                               struct m_config_option *co)
{
    struct m_config_shadow *shadow = config->shadow;
    assert(co->data);

    if (shadow) {
        pthread_mutex_lock(&shadow->lock);

        struct m_config_data *data = shadow->data;
        struct m_group_data *gdata = m_config_gdata(data, co->group_index);
        assert(gdata);

        gdata->ts = atomic_fetch_add(&data->ts, 1) + 1;

        m_option_copy(co->opt, gdata->udata + co->opt->offset, co->data);

        for (int n = 0; n < shadow->num_listeners; n++) {
            struct m_config_cache *cache = shadow->listeners[n];
            if (cache->wakeup_cb && m_config_gdata(cache->data, co->group_index))
                cache->wakeup_cb(cache->wakeup_cb_ctx);
        }

        pthread_mutex_unlock(&shadow->lock);
    }

    int changed = co->opt->flags & UPDATE_OPTS_MASK;
    int group_index = co->group_index;
    while (group_index >= 0) {
        struct m_config_group *g = &shadow->groups[group_index];
        changed |= g->group->change_flags;
        group_index = g->parent_group;
    }

    if (config->option_change_callback) {
        config->option_change_callback(config->option_change_callback_ctx, co,
                                       changed);
    }
}
