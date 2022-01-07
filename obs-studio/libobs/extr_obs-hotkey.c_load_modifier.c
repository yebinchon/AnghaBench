
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int obs_data_t ;


 scalar_t__ obs_data_get_bool (int *,char const*) ;

__attribute__((used)) static inline void load_modifier(uint32_t *modifiers, obs_data_t *data,
     const char *name, uint32_t flag)
{
 if (obs_data_get_bool(data, name))
  *modifiers |= flag;
}
