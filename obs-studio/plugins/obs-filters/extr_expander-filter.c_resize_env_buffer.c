
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_data {size_t envelope_buf_len; int * envelope_buf; } ;


 int MAX_AUDIO_CHANNELS ;
 int brealloc (int ,int) ;

__attribute__((used)) static void resize_env_buffer(struct expander_data *cd, size_t len)
{
 cd->envelope_buf_len = len;
 for (int i = 0; i < MAX_AUDIO_CHANNELS; i++)
  cd->envelope_buf[i] =
   brealloc(cd->envelope_buf[i],
     cd->envelope_buf_len * sizeof(float));
}
