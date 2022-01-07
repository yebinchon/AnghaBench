
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * transition_texrender; int transition_tex_mutex; int transition_mutex; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_5__ {int graphics; } ;
struct TYPE_7__ {TYPE_1__ video; } ;


 int gs_enter_context (int ) ;
 int gs_leave_context () ;
 int gs_texrender_destroy (int ) ;
 TYPE_4__* obs ;
 int pthread_mutex_destroy (int *) ;

void obs_transition_free(obs_source_t *transition)
{
 pthread_mutex_destroy(&transition->transition_mutex);
 pthread_mutex_destroy(&transition->transition_tex_mutex);

 gs_enter_context(obs->video.graphics);
 gs_texrender_destroy(transition->transition_texrender[0]);
 gs_texrender_destroy(transition->transition_texrender[1]);
 gs_leave_context();
}
