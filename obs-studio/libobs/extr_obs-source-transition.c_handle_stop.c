
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int (* transition_stop ) (int ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_source_t ;


 int obs_source_dosignal (TYPE_3__*,char*,char*) ;
 int stub1 (int ) ;

__attribute__((used)) static inline void handle_stop(obs_source_t *transition)
{
 if (transition->info.transition_stop)
  transition->info.transition_stop(transition->context.data);
 obs_source_dosignal(transition, "source_transition_stop",
       "transition_stop");
}
