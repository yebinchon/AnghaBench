
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_data {size_t gaindB_len; int * gaindB; } ;


 int MAX_AUDIO_CHANNELS ;
 int brealloc (int ,int) ;

__attribute__((used)) static void resize_gaindB_buffer(struct expander_data *cd, size_t len)
{
 cd->gaindB_len = len;
 for (int i = 0; i < MAX_AUDIO_CHANNELS; i++)
  cd->gaindB[i] =
   brealloc(cd->gaindB[i], cd->gaindB_len * sizeof(float));
}
