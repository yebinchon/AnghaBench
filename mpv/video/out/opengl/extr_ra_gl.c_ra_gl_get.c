
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_gl {int * gl; } ;
struct ra {struct ra_gl* priv; } ;
typedef int GL ;



GL *ra_gl_get(struct ra *ra)
{
    struct ra_gl *p = ra->priv;
    return p->gl;
}
