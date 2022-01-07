
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stream_dvd_info_req {int* palette; int num_subs; } ;
struct stream {int dummy; } ;
struct sh_stream {int demuxer_id; TYPE_1__* codec; } ;
struct priv {struct sh_stream** dvd_subs; int is_dvd; } ;
struct mp_csp_params {int dummy; } ;
struct mp_cmat {int dummy; } ;
struct TYPE_6__ {struct stream* stream; struct priv* priv; } ;
typedef TYPE_2__ demuxer_t ;
struct TYPE_5__ {char* codec; char* extradata; int extradata_size; } ;


 int MPMIN (int,int ) ;
 struct mp_csp_params MP_CSP_PARAMS_DEFAULTS ;
 int STREAM_CTRL_GET_DVD_INFO ;
 int STREAM_SUB ;
 int demux_add_sh_stream (TYPE_2__*,struct sh_stream*) ;
 struct sh_stream* demux_alloc_sh_stream (int ) ;
 int get_disc_lang (struct stream*,struct sh_stream*,int) ;
 int mp_get_csp_matrix (struct mp_csp_params*,struct mp_cmat*) ;
 int mp_map_fixp_color (struct mp_cmat*,int,int*,int,int*) ;
 scalar_t__ stream_control (struct stream*,int ,struct stream_dvd_info_req*) ;
 int strlen (char*) ;
 char* talloc_asprintf_append (char*,char*,...) ;
 char* talloc_strdup (struct sh_stream*,char*) ;

__attribute__((used)) static void add_dvd_streams(demuxer_t *demuxer)
{
    struct priv *p = demuxer->priv;
    struct stream *stream = demuxer->stream;
    if (!p->is_dvd)
        return;
    struct stream_dvd_info_req info;
    if (stream_control(stream, STREAM_CTRL_GET_DVD_INFO, &info) > 0) {
        for (int n = 0; n < MPMIN(32, info.num_subs); n++) {
            struct sh_stream *sh = demux_alloc_sh_stream(STREAM_SUB);
            sh->demuxer_id = n + 0x20;
            sh->codec->codec = "dvd_subtitle";
            get_disc_lang(stream, sh, 1);



            p->dvd_subs[n] = sh;


            struct mp_csp_params csp = MP_CSP_PARAMS_DEFAULTS;
            struct mp_cmat cmatrix;
            mp_get_csp_matrix(&csp, &cmatrix);

            char *s = talloc_strdup(sh, "");
            s = talloc_asprintf_append(s, "palette: ");
            for (int i = 0; i < 16; i++) {
                int color = info.palette[i];
                int y[3] = {(color >> 16) & 0xff, (color >> 8) & 0xff, color & 0xff};
                int c[3];
                mp_map_fixp_color(&cmatrix, 8, y, 8, c);
                color = (c[2] << 16) | (c[1] << 8) | c[0];

                if (i != 0)
                    s = talloc_asprintf_append(s, ", ");
                s = talloc_asprintf_append(s, "%06x", color);
            }
            s = talloc_asprintf_append(s, "\n");

            sh->codec->extradata = s;
            sh->codec->extradata_size = strlen(s);

            demux_add_sh_stream(demuxer, sh);
        }
    }
}
