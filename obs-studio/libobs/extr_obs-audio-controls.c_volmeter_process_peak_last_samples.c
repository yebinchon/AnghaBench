
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** prev_samples; } ;
typedef TYPE_1__ obs_volmeter_t ;



__attribute__((used)) static void volmeter_process_peak_last_samples(obs_volmeter_t *volmeter,
            int channel_nr, float *samples,
            size_t nr_samples)
{




 switch (nr_samples) {
 case 0:
  break;
 case 1:
  volmeter->prev_samples[channel_nr][0] =
   volmeter->prev_samples[channel_nr][1];
  volmeter->prev_samples[channel_nr][1] =
   volmeter->prev_samples[channel_nr][2];
  volmeter->prev_samples[channel_nr][2] =
   volmeter->prev_samples[channel_nr][3];
  volmeter->prev_samples[channel_nr][3] = samples[nr_samples - 1];
  break;
 case 2:
  volmeter->prev_samples[channel_nr][0] =
   volmeter->prev_samples[channel_nr][2];
  volmeter->prev_samples[channel_nr][1] =
   volmeter->prev_samples[channel_nr][3];
  volmeter->prev_samples[channel_nr][2] = samples[nr_samples - 2];
  volmeter->prev_samples[channel_nr][3] = samples[nr_samples - 1];
  break;
 case 3:
  volmeter->prev_samples[channel_nr][0] =
   volmeter->prev_samples[channel_nr][3];
  volmeter->prev_samples[channel_nr][1] = samples[nr_samples - 3];
  volmeter->prev_samples[channel_nr][2] = samples[nr_samples - 2];
  volmeter->prev_samples[channel_nr][3] = samples[nr_samples - 1];
  break;
 default:
  volmeter->prev_samples[channel_nr][0] = samples[nr_samples - 4];
  volmeter->prev_samples[channel_nr][1] = samples[nr_samples - 3];
  volmeter->prev_samples[channel_nr][2] = samples[nr_samples - 2];
  volmeter->prev_samples[channel_nr][3] = samples[nr_samples - 1];
 }
}
