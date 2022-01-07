
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct priv {double base_time; int seek_reinit; int last_dts; int base_dts; } ;
struct TYPE_4__ {int stream; struct priv* priv; } ;
typedef TYPE_1__ demuxer_t ;


 int MP_NOPTS_VALUE ;
 int MP_VERBOSE (TYPE_1__*,char*,double) ;
 int STREAM_CTRL_GET_CURRENT_TIME ;
 int stream_control (int ,int ,double*) ;

__attribute__((used)) static void reset_pts(demuxer_t *demuxer)
{
    struct priv *p = demuxer->priv;

    double base;
    if (stream_control(demuxer->stream, STREAM_CTRL_GET_CURRENT_TIME, &base) < 1)
        base = 0;

    MP_VERBOSE(demuxer, "reset to time: %f\n", base);

    p->base_dts = p->last_dts = MP_NOPTS_VALUE;
    p->base_time = base;
    p->seek_reinit = 0;
}
