
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_fbo {TYPE_2__* tex; scalar_t__ flip; } ;
struct gl_transform {int dummy; } ;
struct TYPE_3__ {int h; int w; } ;
struct TYPE_4__ {TYPE_1__ params; } ;


 int gl_transform_ortho (struct gl_transform*,int ,int ,int ,int) ;

void gl_transform_ortho_fbo(struct gl_transform *t, struct ra_fbo fbo)
{
    int y_dir = fbo.flip ? -1 : 1;
    gl_transform_ortho(t, 0, fbo.tex->params.w, 0, fbo.tex->params.h * y_dir);
}
