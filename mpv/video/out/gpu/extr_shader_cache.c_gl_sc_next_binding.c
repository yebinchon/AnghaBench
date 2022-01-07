
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gl_shader_cache {TYPE_2__* ra; int * next_binding; } ;
typedef enum ra_vartype { ____Placeholder_ra_vartype } ra_vartype ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {size_t (* desc_namespace ) (TYPE_2__*,int) ;} ;


 size_t stub1 (TYPE_2__*,int) ;

__attribute__((used)) static int gl_sc_next_binding(struct gl_shader_cache *sc, enum ra_vartype type)
{
    return sc->next_binding[sc->ra->fns->desc_namespace(sc->ra, type)]++;
}
