
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wasapi_sample_fmt {scalar_t__ mp_format; } ;
struct mp_chmap {int dummy; } ;
struct ao {int format; } ;
struct TYPE_6__ {scalar_t__ wBitsPerSample; } ;
struct TYPE_7__ {TYPE_1__ Format; } ;
typedef TYPE_2__ WAVEFORMATEXTENSIBLE ;


 int MP_ARRAY_SIZE (int ) ;
 int set_waveformat (TYPE_2__*,struct wasapi_sample_fmt*,int,struct mp_chmap*) ;
 scalar_t__ try_format_exclusive (struct ao*,TYPE_2__*) ;
 int wasapi_formats ;
 int wasapi_get_best_sample_formats (int ,struct wasapi_sample_fmt*) ;

__attribute__((used)) static bool search_sample_formats(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat,
                                  int samplerate, struct mp_chmap *channels)
{
    struct wasapi_sample_fmt alt_formats[MP_ARRAY_SIZE(wasapi_formats)];
    wasapi_get_best_sample_formats(ao->format, alt_formats);
    for (int n = 0; alt_formats[n].mp_format; n++) {
        set_waveformat(wformat, &alt_formats[n], samplerate, channels);
        if (try_format_exclusive(ao, wformat))
            return 1;
    }

    wformat->Format.wBitsPerSample = 0;
    return 0;
}
