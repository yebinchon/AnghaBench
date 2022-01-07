
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int cache_dir; } ;


 int talloc_free (int ) ;
 int talloc_strdup (struct gl_shader_cache*,char const*) ;

void gl_sc_set_cache_dir(struct gl_shader_cache *sc, const char *dir)
{
    talloc_free(sc->cache_dir);
    sc->cache_dir = talloc_strdup(sc, dir);
}
