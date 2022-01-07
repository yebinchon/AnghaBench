
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pa_channel_map {int dummy; } ;
struct format_map {scalar_t__ mp_format; int pa_format; } ;
struct TYPE_9__ {int num; } ;
struct ao {scalar_t__ format; scalar_t__ samplerate; TYPE_1__ channels; } ;
struct TYPE_10__ {scalar_t__ encoding; } ;
typedef TYPE_2__ pa_format_info ;


 scalar_t__ AF_FORMAT_UNKNOWN ;
 int MP_VERBOSE (struct ao*,char*) ;
 scalar_t__ PA_ENCODING_PCM ;
 scalar_t__ PA_RATE_MAX ;
 scalar_t__ af_fmt_from_planar (scalar_t__) ;
 struct format_map* format_maps ;
 scalar_t__ map_digital_format (scalar_t__) ;
 int pa_format_info_set_channel_map (TYPE_2__*,struct pa_channel_map*) ;
 int pa_format_info_set_channels (TYPE_2__*,int ) ;
 int pa_format_info_set_rate (TYPE_2__*,scalar_t__) ;
 int pa_format_info_set_sample_format (TYPE_2__*,int ) ;
 scalar_t__ pa_format_info_valid (TYPE_2__*) ;
 int select_chmap (struct ao*,struct pa_channel_map*) ;

__attribute__((used)) static bool set_format(struct ao *ao, pa_format_info *format)
{
    ao->format = af_fmt_from_planar(ao->format);

    format->encoding = map_digital_format(ao->format);
    if (format->encoding == PA_ENCODING_PCM) {
        const struct format_map *fmt_map = format_maps;

        while (fmt_map->mp_format != ao->format) {
            if (fmt_map->mp_format == AF_FORMAT_UNKNOWN) {
                MP_VERBOSE(ao, "Unsupported format, using default\n");
                fmt_map = format_maps;
                break;
            }
            fmt_map++;
        }
        ao->format = fmt_map->mp_format;

        pa_format_info_set_sample_format(format, fmt_map->pa_format);
    }

    struct pa_channel_map map;

    if (!select_chmap(ao, &map))
        return 0;

    pa_format_info_set_rate(format, ao->samplerate);
    pa_format_info_set_channels(format, ao->channels.num);
    pa_format_info_set_channel_map(format, &map);

    return ao->samplerate < PA_RATE_MAX && pa_format_info_valid(format);
}
