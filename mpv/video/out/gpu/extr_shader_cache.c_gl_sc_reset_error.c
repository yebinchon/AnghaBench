
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_cache {int error_state; } ;



void gl_sc_reset_error(struct gl_shader_cache *sc)
{
    sc->error_state = 0;
}
