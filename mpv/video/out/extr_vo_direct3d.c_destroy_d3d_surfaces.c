
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct osdpart {int change_id; int texture; } ;
struct TYPE_6__ {int d3d_in_scene; int * d3d_backbuf; struct osdpart** osd; } ;
typedef TYPE_1__ d3d_priv ;


 int IDirect3DSurface9_Release (int *) ;
 int MAX_OSD_PARTS ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 int d3d_destroy_video_objects (TYPE_1__*) ;
 int d3dtex_release (TYPE_1__*,int *) ;

__attribute__((used)) static void destroy_d3d_surfaces(d3d_priv *priv)
{
    MP_VERBOSE(priv, "destroy_d3d_surfaces called.\n");

    d3d_destroy_video_objects(priv);

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct osdpart *osd = priv->osd[n];
        d3dtex_release(priv, &osd->texture);
        osd->change_id = -1;
    }

    if (priv->d3d_backbuf)
        IDirect3DSurface9_Release(priv->d3d_backbuf);
    priv->d3d_backbuf = ((void*)0);

    priv->d3d_in_scene = 0;
}
