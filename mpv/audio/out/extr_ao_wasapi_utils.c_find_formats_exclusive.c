
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ao {scalar_t__ format; } ;
struct TYPE_5__ {int SubFormat; } ;
typedef TYPE_1__ WAVEFORMATEXTENSIBLE ;


 scalar_t__ AF_FORMAT_S_AC3 ;
 int MP_VERBOSE (struct ao*,char*) ;
 scalar_t__ af_fmt_is_spdif (scalar_t__) ;
 int * format_to_subtype (scalar_t__) ;
 int search_channels (struct ao*,TYPE_1__*) ;
 scalar_t__ try_format_exclusive (struct ao*,TYPE_1__*) ;

__attribute__((used)) static bool find_formats_exclusive(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat)
{

    if (try_format_exclusive(ao, wformat))
        return 1;

    if (af_fmt_is_spdif(ao->format)) {
        if (ao->format != AF_FORMAT_S_AC3) {


            MP_VERBOSE(ao, "Retrying as AC3.\n");
            wformat->SubFormat = *format_to_subtype(AF_FORMAT_S_AC3);
            if (try_format_exclusive(ao, wformat))
                return 1;
        }
        return 0;
    }


    return search_channels(ao, wformat);
}
