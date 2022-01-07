
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ num_streams; TYPE_1__* avfc; } ;
typedef TYPE_2__ lavf_priv_t ;
struct TYPE_8__ {TYPE_2__* priv; } ;
typedef TYPE_3__ demuxer_t ;
struct TYPE_6__ {scalar_t__ nb_streams; } ;


 int handle_new_stream (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static void add_new_streams(demuxer_t *demuxer)
{
    lavf_priv_t *priv = demuxer->priv;
    while (priv->num_streams < priv->avfc->nb_streams)
        handle_new_stream(demuxer, priv->num_streams);
}
