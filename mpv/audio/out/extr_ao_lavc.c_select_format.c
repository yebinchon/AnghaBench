
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int format; } ;
typedef int AVCodec ;


 int AF_FORMAT_COUNT ;
 int af_get_best_sample_formats (int,int*) ;
 scalar_t__ supports_format (int const*,int) ;

__attribute__((used)) static void select_format(struct ao *ao, const AVCodec *codec)
{
    int formats[AF_FORMAT_COUNT + 1];
    af_get_best_sample_formats(ao->format, formats);

    for (int n = 0; formats[n]; n++) {
        if (supports_format(codec, formats[n])) {
            ao->format = formats[n];
            break;
        }
    }
}
