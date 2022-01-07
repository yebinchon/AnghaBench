
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vo {TYPE_1__* priv; } ;
struct TYPE_4__ {int * d3d9_dll; } ;
typedef TYPE_1__ d3d_priv ;


 int FreeLibrary (int *) ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 int uninit_d3d (TYPE_1__*) ;
 int vo_w32_uninit (struct vo*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    d3d_priv *priv = vo->priv;

    MP_VERBOSE(priv, "uninit called.\n");

    uninit_d3d(priv);
    vo_w32_uninit(vo);
    if (priv->d3d9_dll)
        FreeLibrary(priv->d3d9_dll);
    priv->d3d9_dll = ((void*)0);
}
