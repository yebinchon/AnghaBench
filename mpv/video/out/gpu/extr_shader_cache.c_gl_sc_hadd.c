
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int header_text; } ;


 int bstr_xappend0 (struct gl_shader_cache*,int *,char const*) ;

void gl_sc_hadd(struct gl_shader_cache *sc, const char *text)
{
    bstr_xappend0(sc, &sc->header_text, text);
}
