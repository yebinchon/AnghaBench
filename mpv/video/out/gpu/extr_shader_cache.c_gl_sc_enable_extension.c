
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int num_exts; int * exts; } ;


 int MP_TARRAY_APPEND (struct gl_shader_cache*,int *,int,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int talloc_strdup (struct gl_shader_cache*,char*) ;

void gl_sc_enable_extension(struct gl_shader_cache *sc, char *name)
{
    for (int n = 0; n < sc->num_exts; n++) {
        if (strcmp(sc->exts[n], name) == 0)
            return;
    }
    MP_TARRAY_APPEND(sc, sc->exts, sc->num_exts, talloc_strdup(sc, name));
}
