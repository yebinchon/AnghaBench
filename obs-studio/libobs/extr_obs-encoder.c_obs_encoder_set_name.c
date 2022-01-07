
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_4__ context; } ;
typedef TYPE_1__ obs_encoder_t ;


 int obs_context_data_setname (TYPE_4__*,char const*) ;
 int obs_encoder_valid (TYPE_1__*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;

void obs_encoder_set_name(obs_encoder_t *encoder, const char *name)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_set_name"))
  return;

 if (name && *name && strcmp(name, encoder->context.name) != 0)
  obs_context_data_setname(&encoder->context, name);
}
