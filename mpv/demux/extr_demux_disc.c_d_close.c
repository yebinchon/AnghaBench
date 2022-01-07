
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int slave; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef TYPE_1__ demuxer_t ;


 int demux_free (int ) ;

__attribute__((used)) static void d_close(demuxer_t *demuxer)
{
    struct priv *p = demuxer->priv;
    demux_free(p->slave);
}
