
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct priv {scalar_t__ filename; scalar_t__ dvd_speed; int * dvdnav; } ;
struct TYPE_4__ {struct priv* priv; } ;
typedef TYPE_1__ stream_t ;


 int dvd_set_speed (TYPE_1__*,scalar_t__,int) ;
 int dvdnav_close (int *) ;
 int free (scalar_t__) ;

__attribute__((used)) static void stream_dvdnav_close(stream_t *s)
{
    struct priv *priv = s->priv;
    dvdnav_close(priv->dvdnav);
    priv->dvdnav = ((void*)0);
    if (priv->dvd_speed)
        dvd_set_speed(s, priv->filename, -1);
    if (priv->filename)
        free(priv->filename);
}
