
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wasapi_state {scalar_t__ opt_exclusive; } ;
struct wasapi_sample_fmt {int member_1; int member_2; scalar_t__ mp_format; int * member_3; int member_0; } ;
struct mp_chmap {int num; } ;
struct ao {int format; int samplerate; struct mp_chmap channels; struct wasapi_state* priv; } ;
struct TYPE_5__ {int Format; } ;
typedef TYPE_1__ WAVEFORMATEXTENSIBLE ;
typedef int AUDCLNT_SHAREMODE ;


 int AF_FORMAT_S16 ;
 int AUDCLNT_SHAREMODE_EXCLUSIVE ;
 int AUDCLNT_SHAREMODE_SHARED ;
 int KSDATAFORMAT_SUBTYPE_PCM ;
 int MP_ARRAY_SIZE (int ) ;
 scalar_t__ af_fmt_is_spdif (int ) ;
 int find_formats_exclusive (struct ao*,TYPE_1__*) ;
 int find_formats_shared (struct ao*,TYPE_1__*) ;
 int mp_chmap_from_channels (struct mp_chmap*,int) ;
 scalar_t__ mp_chmap_is_unknown (struct mp_chmap*) ;
 int mp_chmap_is_valid (struct mp_chmap*) ;
 int mp_chmap_reorder_to_waveext (struct mp_chmap*) ;
 int set_ao_format (struct ao*,int *,int ) ;
 int set_waveformat (TYPE_1__*,struct wasapi_sample_fmt*,int ,struct mp_chmap*) ;
 int wasapi_formats ;
 int wasapi_get_best_sample_formats (int ,struct wasapi_sample_fmt*) ;

__attribute__((used)) static bool find_formats(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    struct mp_chmap channels = ao->channels;

    if (mp_chmap_is_unknown(&channels))
        mp_chmap_from_channels(&channels, channels.num);
    mp_chmap_reorder_to_waveext(&channels);
    if (!mp_chmap_is_valid(&channels))
        mp_chmap_from_channels(&channels, 2);

    struct wasapi_sample_fmt alt_formats[MP_ARRAY_SIZE(wasapi_formats)];
    wasapi_get_best_sample_formats(ao->format, alt_formats);
    struct wasapi_sample_fmt wasapi_format =
        {AF_FORMAT_S16, 16, 16, &KSDATAFORMAT_SUBTYPE_PCM};;
    if (alt_formats[0].mp_format)
        wasapi_format = alt_formats[0];

    AUDCLNT_SHAREMODE share_mode;
    WAVEFORMATEXTENSIBLE wformat;
    set_waveformat(&wformat, &wasapi_format, ao->samplerate, &channels);

    if (state->opt_exclusive || af_fmt_is_spdif(ao->format)) {
        share_mode = AUDCLNT_SHAREMODE_EXCLUSIVE;
        if(!find_formats_exclusive(ao, &wformat))
            return 0;
    } else {
        share_mode = AUDCLNT_SHAREMODE_SHARED;
        if(!find_formats_shared(ao, &wformat))
            return 0;
    }

    return set_ao_format(ao, &wformat.Format, share_mode);
}
