
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int dummy; } ;


 int gl_sc_reset (struct gl_shader_cache*) ;
 int sc_flush_cache (struct gl_shader_cache*) ;
 int talloc_free (struct gl_shader_cache*) ;

void gl_sc_destroy(struct gl_shader_cache *sc)
{
    if (!sc)
        return;
    gl_sc_reset(sc);
    sc_flush_cache(sc);
    talloc_free(sc);
}
