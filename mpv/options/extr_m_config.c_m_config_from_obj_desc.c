
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct m_obj_desc {int (* set_defaults ) (struct mpv_global*,int ) ;int options; int priv_defaults; int priv_size; } ;
struct m_config {int optstruct; struct mpv_global* global; } ;


 struct m_config* m_config_new (void*,struct mp_log*,int ,int ,int ) ;
 int stub1 (struct mpv_global*,int ) ;

__attribute__((used)) static struct m_config *m_config_from_obj_desc(void *talloc_ctx,
                                               struct mp_log *log,
                                               struct mpv_global *global,
                                               struct m_obj_desc *desc)
{
    struct m_config *c =
        m_config_new(talloc_ctx, log, desc->priv_size, desc->priv_defaults,
                     desc->options);
    c->global = global;
    if (desc->set_defaults && c->global)
        desc->set_defaults(c->global, c->optstruct);
    return c;
}
