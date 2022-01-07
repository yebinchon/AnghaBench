
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {int * tex; int ra; struct priv* priv; } ;
struct TYPE_2__ {int num_planes; } ;
struct priv {TYPE_1__ desc; int * pbuf; } ;


 int CVPixelBufferRelease (int *) ;
 int ra_tex_free (int ,int *) ;

__attribute__((used)) static void mapper_unmap(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;


    CVPixelBufferRelease(p->pbuf);
    p->pbuf = ((void*)0);

    for (int i = 0; i < p->desc.num_planes; i++)
        ra_tex_free(mapper->ra, &mapper->tex[i]);
}
