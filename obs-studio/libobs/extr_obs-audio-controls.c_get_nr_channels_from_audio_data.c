
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_data {scalar_t__* data; } ;


 int CLAMP (int,int ,int ) ;
 int MAX_AUDIO_CHANNELS ;
 int MAX_AV_PLANES ;

__attribute__((used)) static int get_nr_channels_from_audio_data(const struct audio_data *data)
{
 int nr_channels = 0;
 for (int i = 0; i < MAX_AV_PLANES; i++) {
  if (data->data[i])
   nr_channels++;
 }
 return CLAMP(nr_channels, 0, MAX_AUDIO_CHANNELS);
}
