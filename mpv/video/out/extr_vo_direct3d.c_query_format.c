
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int * priv; } ;
typedef int d3d_priv ;


 int init_rendering_mode (int *,int,int) ;

__attribute__((used)) static int query_format(struct vo *vo, int movie_fmt)
{
    d3d_priv *priv = vo->priv;
    if (!init_rendering_mode(priv, movie_fmt, 0))
        return 0;

    return 1;
}
