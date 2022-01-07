
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_data {size_t runaverage_len; int * runaverage; } ;


 int MAX_AUDIO_CHANNELS ;
 int brealloc (int ,int) ;

__attribute__((used)) static void resize_runaverage_buffer(struct expander_data *cd, size_t len)
{
 cd->runaverage_len = len;
 for (int i = 0; i < MAX_AUDIO_CHANNELS; i++)
  cd->runaverage[i] = brealloc(
   cd->runaverage[i], cd->runaverage_len * sizeof(float));
}
