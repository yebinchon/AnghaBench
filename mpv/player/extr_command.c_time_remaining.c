
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPContext ;


 double MP_NOPTS_VALUE ;
 double get_playback_time (int *) ;
 double get_time_length (int *) ;

__attribute__((used)) static bool time_remaining(MPContext *mpctx, double *remaining)
{
    double len = get_time_length(mpctx);
    double playback = get_playback_time(mpctx);

    if (playback == MP_NOPTS_VALUE || len <= 0)
        return 0;

    *remaining = len - playback;

    return len >= 0;
}
