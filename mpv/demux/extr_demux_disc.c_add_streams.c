
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sh_stream {scalar_t__ type; int demuxer_id; TYPE_1__* codec; } ;
struct priv {int num_streams; int is_dvd; int streams; struct sh_stream** dvd_subs; int slave; } ;
struct mp_image_params {int p_h; int p_w; int h; int w; } ;
struct TYPE_7__ {int stream; struct priv* priv; } ;
typedef TYPE_2__ demuxer_t ;
struct TYPE_6__ {int par_h; int par_w; int disp_h; int disp_w; } ;


 int MP_TARRAY_APPEND (struct priv*,int ,int,struct sh_stream*) ;
 int STREAM_CTRL_GET_ASPECT_RATIO ;
 scalar_t__ STREAM_OK ;
 scalar_t__ STREAM_SUB ;
 scalar_t__ STREAM_VIDEO ;
 int assert (int) ;
 int demux_add_sh_stream (TYPE_2__*,struct sh_stream*) ;
 struct sh_stream* demux_alloc_sh_stream (scalar_t__) ;
 int demux_get_num_stream (int ) ;
 struct sh_stream* demux_get_stream (int ,int) ;
 int get_disc_lang (int ,struct sh_stream*,int ) ;
 int mp_image_params_set_dsize (struct mp_image_params*,int,int) ;
 int reselect_streams (TYPE_2__*) ;
 scalar_t__ stream_control (int ,int ,double*) ;

__attribute__((used)) static void add_streams(demuxer_t *demuxer)
{
    struct priv *p = demuxer->priv;

    for (int n = p->num_streams; n < demux_get_num_stream(p->slave); n++) {
        struct sh_stream *src = demux_get_stream(p->slave, n);
        if (src->type == STREAM_SUB) {
            struct sh_stream *sub = ((void*)0);
            if (src->demuxer_id >= 0x20 && src->demuxer_id <= 0x3F)
                sub = p->dvd_subs[src->demuxer_id - 0x20];
            if (sub) {
                assert(p->num_streams == n);
                MP_TARRAY_APPEND(p, p->streams, p->num_streams, sub);
                continue;
            }
        }
        struct sh_stream *sh = demux_alloc_sh_stream(src->type);
        assert(p->num_streams == n);
        MP_TARRAY_APPEND(p, p->streams, p->num_streams, sh);

        *sh->codec = *src->codec;
        sh->demuxer_id = src->demuxer_id;
        if (src->type == STREAM_VIDEO) {
            double ar;
            if (stream_control(demuxer->stream, STREAM_CTRL_GET_ASPECT_RATIO, &ar)
                                == STREAM_OK)
            {
                struct mp_image_params f = {.w = src->codec->disp_w,
                                            .h = src->codec->disp_h};
                mp_image_params_set_dsize(&f, 1728 * ar, 1728);
                sh->codec->par_w = f.p_w;
                sh->codec->par_h = f.p_h;
            }
        }
        get_disc_lang(demuxer->stream, sh, p->is_dvd);
        demux_add_sh_stream(demuxer, sh);
    }
    reselect_streams(demuxer);
}
