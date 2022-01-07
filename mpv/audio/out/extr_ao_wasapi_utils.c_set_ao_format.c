
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ao_convert_fmt {scalar_t__ pad_lsb; scalar_t__ dst_bits; int channels; scalar_t__ src_fmt; } ;
struct wasapi_state {scalar_t__ share_mode; int format; struct ao_convert_fmt convert_format; } ;
struct wasapi_sample_fmt {scalar_t__ mp_format; scalar_t__ used_msb; scalar_t__ bits; } ;
struct mp_chmap {int num; } ;
struct ao {int samplerate; scalar_t__ format; struct mp_chmap channels; struct wasapi_state* priv; } ;
struct TYPE_7__ {int nSamplesPerSec; } ;
typedef TYPE_1__ WAVEFORMATEX ;
typedef scalar_t__ AUDCLNT_SHAREMODE ;


 scalar_t__ AUDCLNT_SHAREMODE_EXCLUSIVE ;
 int MP_ERR (struct ao*,char*,int ) ;
 int MP_VERBOSE (struct ao*,char*,int ,int ,int ,int ,char*) ;
 scalar_t__ af_fmt_is_pcm (scalar_t__) ;
 int af_fmt_to_str (scalar_t__) ;
 int ao_can_convert_inplace (struct ao_convert_fmt*) ;
 int chmap_from_waveformat (struct mp_chmap*,TYPE_1__*) ;
 struct wasapi_sample_fmt format_from_waveformat (TYPE_1__*) ;
 int mp_chmap_to_str (struct mp_chmap*) ;
 int waveformat_copy (int *,TYPE_1__*) ;
 int waveformat_to_str (TYPE_1__*) ;

__attribute__((used)) static bool set_ao_format(struct ao *ao, WAVEFORMATEX *wf,
                          AUDCLNT_SHAREMODE share_mode)
{
    struct wasapi_state *state = ao->priv;
    struct wasapi_sample_fmt format = format_from_waveformat(wf);
    if (!format.mp_format) {
        MP_ERR(ao, "Unable to construct sample format from WAVEFORMAT %s\n",
               waveformat_to_str(wf));
        return 0;
    }



    if (af_fmt_is_pcm(format.mp_format)) {
        struct mp_chmap channels;
        if (!chmap_from_waveformat(&channels, wf)) {
            MP_ERR(ao, "Unable to construct channel map from WAVEFORMAT %s\n",
                   waveformat_to_str(wf));
            return 0;
        }

        struct ao_convert_fmt conv = {
            .src_fmt = format.mp_format,
            .channels = channels.num,
            .dst_bits = format.bits,
            .pad_lsb = format.bits - format.used_msb,
        };
        if (!ao_can_convert_inplace(&conv)) {
            MP_ERR(ao, "Unable to convert to %s\n", waveformat_to_str(wf));
            return 0;
        }

        state->convert_format = conv;
        ao->samplerate = wf->nSamplesPerSec;
        ao->format = format.mp_format;
        ao->channels = channels;
    }
    waveformat_copy(&state->format, wf);
    state->share_mode = share_mode;

    MP_VERBOSE(ao, "Accepted as %s %s @ %dhz -> %s (%s)\n",
               mp_chmap_to_str(&ao->channels),
               af_fmt_to_str(ao->format), ao->samplerate,
               waveformat_to_str(wf),
               state->share_mode == AUDCLNT_SHAREMODE_EXCLUSIVE
               ? "exclusive" : "shared");
    return 1;
}
