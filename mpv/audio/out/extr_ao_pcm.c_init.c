
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int fp; scalar_t__ waveheader; scalar_t__ outputfilename; scalar_t__ append; } ;
struct mp_chmap_sel {int member_0; } ;
struct TYPE_2__ {int num; } ;
struct ao {int format; int bps; int samplerate; int untimed; TYPE_1__ channels; struct priv* priv; } ;






 scalar_t__ BIG_ENDIAN ;
 scalar_t__ BYTE_ORDER ;
 int MP_ERR (struct ao*,char*,scalar_t__) ;
 int MP_FATAL (struct ao*,char*) ;
 int MP_INFO (struct ao*,char*,scalar_t__,char*,int,int,int ) ;
 int af_fmt_from_planar (int) ;
 int af_fmt_is_spdif (int) ;
 int af_fmt_to_bytes (int) ;
 int af_fmt_to_str (int) ;
 int ao_chmap_sel_adjust (struct ao*,struct mp_chmap_sel*,TYPE_1__*) ;
 int fopen (scalar_t__,char*) ;
 int mp_chmap_sel_add_waveext (struct mp_chmap_sel*) ;
 scalar_t__ talloc_strdup (struct priv*,char*) ;
 int write_wave_header (struct ao*,int ,int) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct priv *priv = ao->priv;

    if (!priv->outputfilename)
        priv->outputfilename =
            talloc_strdup(priv, priv->waveheader ? "audiodump.wav" : "audiodump.pcm");

    ao->format = af_fmt_from_planar(ao->format);

    if (priv->waveheader) {




        if (BYTE_ORDER == BIG_ENDIAN) {
            MP_FATAL(ao, "Not supported on big endian.\n");
            return -1;
        }

        switch (ao->format) {
        case 128:
        case 130:
        case 129:
        case 131:
             break;
        default:
            if (!af_fmt_is_spdif(ao->format))
                ao->format = 130;
            break;
        }
    }

    struct mp_chmap_sel sel = {0};
    mp_chmap_sel_add_waveext(&sel);
    if (!ao_chmap_sel_adjust(ao, &sel, &ao->channels))
        return -1;

    ao->bps = ao->channels.num * ao->samplerate * af_fmt_to_bytes(ao->format);

    MP_INFO(ao, "File: %s (%s)\nPCM: Samplerate: %d Hz Channels: %d Format: %s\n",
            priv->outputfilename,
            priv->waveheader ? "WAVE" : "RAW PCM", ao->samplerate,
            ao->channels.num, af_fmt_to_str(ao->format));

    priv->fp = fopen(priv->outputfilename, priv->append ? "ab" : "wb");
    if (!priv->fp) {
        MP_ERR(ao, "Failed to open %s for writing!\n", priv->outputfilename);
        return -1;
    }
    if (priv->waveheader)
        write_wave_header(ao, priv->fp, 0x7ffff000);
    ao->untimed = 1;

    return 0;
}
