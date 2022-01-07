
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replaygain_data {int track_peak; int album_peak; int track_gain; int album_gain; int member_0; } ;
struct mp_tags {int dummy; } ;
struct mp_log {int dummy; } ;


 scalar_t__ decode_gain (struct mp_log*,struct mp_tags*,char*,int *) ;
 scalar_t__ decode_peak (struct mp_log*,struct mp_tags*,char*,int *) ;
 struct replaygain_data* talloc_dup (int *,struct replaygain_data*) ;

__attribute__((used)) static struct replaygain_data *decode_rgain(struct mp_log *log,
                                            struct mp_tags *tags)
{
    struct replaygain_data rg = {0};





    if (decode_gain(log, tags, "REPLAYGAIN_TRACK_GAIN", &rg.track_gain) >= 0 &&
        decode_peak(log, tags, "REPLAYGAIN_TRACK_PEAK", &rg.track_peak) >= 0)
    {
        if (decode_gain(log, tags, "REPLAYGAIN_ALBUM_GAIN", &rg.album_gain) < 0 ||
            decode_peak(log, tags, "REPLAYGAIN_ALBUM_PEAK", &rg.album_peak) < 0)
        {

            rg.album_gain = rg.track_gain;
            rg.album_peak = rg.track_peak;
        }
        return talloc_dup(((void*)0), &rg);
    }

    if (decode_gain(log, tags, "REPLAYGAIN_GAIN", &rg.track_gain) >= 0 &&
        decode_peak(log, tags, "REPLAYGAIN_PEAK", &rg.track_peak) >= 0)
    {
        rg.album_gain = rg.track_gain;
        rg.album_peak = rg.track_peak;
        return talloc_dup(((void*)0), &rg);
    }

    return ((void*)0);
}
