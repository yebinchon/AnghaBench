
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_core_audio {int render_order; } ;
typedef int obs_source_t ;


 scalar_t__ DARRAY_INVALID ;
 int UNUSED_PARAMETER (int *) ;
 scalar_t__ da_find (int ,int **,int ) ;
 int da_push_back (int ,int **) ;
 int * obs_source_get_ref (int *) ;

__attribute__((used)) static void push_audio_tree(obs_source_t *parent, obs_source_t *source, void *p)
{
 struct obs_core_audio *audio = p;

 if (da_find(audio->render_order, &source, 0) == DARRAY_INVALID) {
  obs_source_t *s = obs_source_get_ref(source);
  if (s)
   da_push_back(audio->render_order, &s);
 }

 UNUSED_PARAMETER(parent);
}
