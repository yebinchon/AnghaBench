
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sc_entry {int timer; scalar_t__ pass; int ubo; } ;
struct gl_shader_cache {int num_entries; TYPE_2__* ra; struct sc_entry** entries; } ;
struct TYPE_5__ {TYPE_1__* fns; } ;
struct TYPE_4__ {int (* renderpass_destroy ) (TYPE_2__*,scalar_t__) ;} ;


 int MP_DBG (struct gl_shader_cache*,char*) ;
 int ra_buf_free (TYPE_2__*,int *) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 int talloc_free (struct sc_entry*) ;
 int timer_pool_destroy (int ) ;

__attribute__((used)) static void sc_flush_cache(struct gl_shader_cache *sc)
{
    MP_DBG(sc, "flushing shader cache\n");

    for (int n = 0; n < sc->num_entries; n++) {
        struct sc_entry *e = sc->entries[n];
        ra_buf_free(sc->ra, &e->ubo);
        if (e->pass)
            sc->ra->fns->renderpass_destroy(sc->ra, e->pass);
        timer_pool_destroy(e->timer);
        talloc_free(e);
    }
    sc->num_entries = 0;
}
