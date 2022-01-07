
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d3d_in_scene; int d3d_device; } ;
typedef TYPE_1__ d3d_priv ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_BeginScene (int ) ;
 int MP_ERR (TYPE_1__*,char*) ;

__attribute__((used)) static bool d3d_begin_scene(d3d_priv *priv)
{
    if (!priv->d3d_in_scene) {
        if (FAILED(IDirect3DDevice9_BeginScene(priv->d3d_device))) {
            MP_ERR(priv, "BeginScene failed.\n");
            return 0;
        }
        priv->d3d_in_scene = 1;
    }
    return 1;
}
