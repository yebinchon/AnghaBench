
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int next_uniform_dynamic; } ;



void gl_sc_uniform_dynamic(struct gl_shader_cache *sc)
{
    sc->next_uniform_dynamic = 1;
}
