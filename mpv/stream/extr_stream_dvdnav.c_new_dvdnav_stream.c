
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct priv {int dvdnav; int * filename; int dvd_speed; TYPE_1__* opts; } ;
struct TYPE_7__ {struct priv* priv; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_6__ {int speed; } ;


 scalar_t__ DVDNAV_STATUS_OK ;
 int MP_ERR (TYPE_2__*,char*) ;
 int dvd_set_speed (TYPE_2__*,int *,int ) ;
 int dvdnav_get_title_string (int ,char const**) ;
 scalar_t__ dvdnav_open (int *,int *) ;
 scalar_t__ dvdnav_set_PGC_positioning_flag (int ,int) ;
 int dvdnav_set_readahead_flag (int ,int) ;
 int free (int *) ;
 int * strdup (char*) ;

__attribute__((used)) static struct priv *new_dvdnav_stream(stream_t *stream, char *filename)
{
    struct priv *priv = stream->priv;
    const char *title_str;

    if (!filename)
        return ((void*)0);

    if (!(priv->filename = strdup(filename)))
        return ((void*)0);

    priv->dvd_speed = priv->opts->speed;
    dvd_set_speed(stream, priv->filename, priv->dvd_speed);

    if (dvdnav_open(&(priv->dvdnav), priv->filename) != DVDNAV_STATUS_OK) {
        free(priv->filename);
        priv->filename = ((void*)0);
        return ((void*)0);
    }

    if (!priv->dvdnav)
        return ((void*)0);

    dvdnav_set_readahead_flag(priv->dvdnav, 1);
    if (dvdnav_set_PGC_positioning_flag(priv->dvdnav, 1) != DVDNAV_STATUS_OK)
        MP_ERR(stream, "stream_dvdnav, failed to set PGC positioning\n");

    dvdnav_get_title_string(priv->dvdnav, &title_str);

    return priv;
}
