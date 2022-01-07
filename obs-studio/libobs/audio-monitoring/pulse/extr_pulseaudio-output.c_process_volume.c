
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct audio_monitor {int bytes_per_channel; int channels; } ;


 int process_byte (int * const,int ,int ,float) ;
 int process_float (int * const,int ,int ,float) ;
 int process_short (int * const,int ,int ,float) ;

void process_volume(const struct audio_monitor *monitor, float vol,
      uint8_t *const *resample_data, uint32_t resample_frames)
{
 switch (monitor->bytes_per_channel) {
 case 1:
  process_byte(resample_data[0], resample_frames,
        monitor->channels, vol);
  break;
 case 2:
  process_short(resample_data[0], resample_frames,
         monitor->channels, vol);
  break;
 default:
  process_float(resample_data[0], resample_frames,
         monitor->channels, vol);
  break;
 }
}
