
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_encoder_t ;
struct TYPE_3__ {int encoders_mutex; int first_encoder; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int * get_context_by_name (int *,char const*,int *,int ) ;
 TYPE_2__* obs ;
 int obs_encoder_addref_safe_ ;

obs_encoder_t *obs_get_encoder_by_name(const char *name)
{
 if (!obs)
  return ((void*)0);
 return get_context_by_name(&obs->data.first_encoder, name,
       &obs->data.encoders_mutex,
       obs_encoder_addref_safe_);
}
