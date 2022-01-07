
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image {int dummy; } ;
struct TYPE_2__ {int unsharp; } ;
struct gl_video {TYPE_1__ opts; int sc; } ;
struct gl_transform {int dummy; } ;


 int pass_describe (struct gl_video*,char*) ;
 int pass_sample_unsharp (int ,int ) ;

__attribute__((used)) static void unsharp_hook(struct gl_video *p, struct image img,
                         struct gl_transform *trans, void *priv)
{
    pass_describe(p, "unsharp masking");
    pass_sample_unsharp(p->sc, p->opts.unsharp);
}
