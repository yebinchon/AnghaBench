
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_audio_data {int * data; } ;


 size_t MAX_AV_PLANES ;
 int bfree (int ) ;
 int memset (struct obs_audio_data*,int ,int) ;

__attribute__((used)) static inline void free_audio_packet(struct obs_audio_data *audio)
{
 for (size_t i = 0; i < MAX_AV_PLANES; i++)
  bfree(audio->data[i]);
 memset(audio, 0, sizeof(*audio));
}
