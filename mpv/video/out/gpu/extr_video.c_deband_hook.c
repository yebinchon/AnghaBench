
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct image {size_t type; } ;
struct TYPE_5__ {int gamma; } ;
struct TYPE_6__ {TYPE_2__ color; } ;
struct TYPE_4__ {int deband_opts; } ;
struct gl_video {TYPE_3__ image_params; int lfg; TYPE_1__ opts; int sc; } ;
struct gl_transform {int dummy; } ;


 int pass_describe (struct gl_video*,char*,int ) ;
 int pass_sample_deband (int ,int ,int *,int ) ;
 int * plane_names ;

__attribute__((used)) static void deband_hook(struct gl_video *p, struct image img,
                        struct gl_transform *trans, void *priv)
{
    pass_describe(p, "debanding (%s)", plane_names[img.type]);
    pass_sample_deband(p->sc, p->opts.deband_opts, &p->lfg,
                       p->image_params.color.gamma);
}
