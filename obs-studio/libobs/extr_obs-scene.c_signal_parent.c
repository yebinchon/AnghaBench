
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* source; } ;
typedef TYPE_3__ obs_scene_t ;
typedef int calldata_t ;
struct TYPE_6__ {int signals; } ;
struct TYPE_7__ {TYPE_1__ context; } ;


 int calldata_set_ptr (int *,char*,TYPE_3__*) ;
 int signal_handler_signal (int ,char const*,int *) ;

__attribute__((used)) static void signal_parent(obs_scene_t *parent, const char *command,
     calldata_t *params)
{
 calldata_set_ptr(params, "scene", parent);
 signal_handler_signal(parent->source->context.signals, command, params);
}
