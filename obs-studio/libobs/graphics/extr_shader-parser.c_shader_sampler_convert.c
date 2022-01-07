
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char** array; } ;
struct TYPE_3__ {size_t num; char** array; } ;
struct shader_sampler {TYPE_2__ values; TYPE_1__ states; } ;
struct gs_sampler_info {int max_anisotropy; scalar_t__ border_color; void* address_w; void* address_v; void* address_u; int filter; } ;


 scalar_t__ astrcmpi (char const*,char*) ;
 void* get_address_mode (char const*) ;
 int get_sample_filter (char const*) ;
 int memset (struct gs_sampler_info*,int ,int) ;
 scalar_t__ strtol (char const*,int *,int) ;

void shader_sampler_convert(struct shader_sampler *ss,
       struct gs_sampler_info *info)
{
 size_t i;
 memset(info, 0, sizeof(struct gs_sampler_info));

 info->max_anisotropy = 1;

 for (i = 0; i < ss->states.num; i++) {
  const char *state = ss->states.array[i];
  const char *value = ss->values.array[i];

  if (astrcmpi(state, "Filter") == 0)
   info->filter = get_sample_filter(value);
  else if (astrcmpi(state, "AddressU") == 0)
   info->address_u = get_address_mode(value);
  else if (astrcmpi(state, "AddressV") == 0)
   info->address_v = get_address_mode(value);
  else if (astrcmpi(state, "AddressW") == 0)
   info->address_w = get_address_mode(value);
  else if (astrcmpi(state, "MaxAnisotropy") == 0)
   info->max_anisotropy = (int)strtol(value, ((void*)0), 10);
  else if (astrcmpi(state, "BorderColor") == 0)
   info->border_color = strtol(value + 1, ((void*)0), 16);
 }
}
