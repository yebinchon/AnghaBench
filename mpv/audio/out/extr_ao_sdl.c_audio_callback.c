
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int sstride; scalar_t__ bps; } ;
typedef void Uint8 ;


 int MP_ERR (struct ao*,char*) ;
 int ao_read_data (struct ao*,void**,int,scalar_t__) ;
 scalar_t__ mp_time_us () ;

__attribute__((used)) static void audio_callback(void *userdata, Uint8 *stream, int len)
{
    struct ao *ao = userdata;

    void *data[1] = {stream};

    if (len % ao->sstride)
        MP_ERR(ao, "SDL audio callback not sample aligned");



    double delay = 2 * len / (double)ao->bps;

    ao_read_data(ao, data, len / ao->sstride, mp_time_us() + 1000000LL * delay);
}
