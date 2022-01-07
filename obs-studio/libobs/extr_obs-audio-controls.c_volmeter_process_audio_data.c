
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_data {int dummy; } ;
typedef int obs_volmeter_t ;


 int get_nr_channels_from_audio_data (struct audio_data const*) ;
 int volmeter_process_magnitude (int *,struct audio_data const*,int) ;
 int volmeter_process_peak (int *,struct audio_data const*,int) ;

__attribute__((used)) static void volmeter_process_audio_data(obs_volmeter_t *volmeter,
     const struct audio_data *data)
{
 int nr_channels = get_nr_channels_from_audio_data(data);

 volmeter_process_peak(volmeter, data, nr_channels);
 volmeter_process_magnitude(volmeter, data, nr_channels);
}
