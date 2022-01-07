
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int d3d_priv ;


 int MP_VERBOSE (int *,char*) ;
 int destroy_d3d (int *) ;
 int init_d3d (int *) ;
 int resize_d3d (int *) ;

__attribute__((used)) static int reconfigure_d3d(d3d_priv *priv)
{
    MP_VERBOSE(priv, "reconfigure_d3d called.\n");





    destroy_d3d(priv);
    if (!init_d3d(priv))
        return 0;


    if (!resize_d3d(priv))
        return 0;

    return 1;
}
