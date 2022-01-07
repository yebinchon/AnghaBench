
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_gl {int gl; scalar_t__ debug_enable; } ;
struct ra {int log; struct ra_gl* priv; } ;


 int gl_check_error (int ,int ,char const*) ;

__attribute__((used)) static void gl_debug_marker(struct ra *ra, const char *msg)
{
    struct ra_gl *p = ra->priv;

    if (p->debug_enable)
        gl_check_error(p->gl, ra->log, msg);
}
