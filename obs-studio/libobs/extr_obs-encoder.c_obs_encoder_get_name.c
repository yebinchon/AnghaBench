
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* name; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_encoder_t ;


 scalar_t__ obs_encoder_valid (TYPE_2__ const*,char*) ;

const char *obs_encoder_get_name(const obs_encoder_t *encoder)
{
 return obs_encoder_valid(encoder, "obs_encoder_get_name")
         ? encoder->context.name
         : ((void*)0);
}
