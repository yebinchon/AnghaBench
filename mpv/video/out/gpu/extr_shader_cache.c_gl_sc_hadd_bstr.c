
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int header_text; } ;
struct bstr {int dummy; } ;


 int bstr_xappend (struct gl_shader_cache*,int *,struct bstr) ;

void gl_sc_hadd_bstr(struct gl_shader_cache *sc, struct bstr text)
{
    bstr_xappend(sc, &sc->header_text, text);
}
