
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int obs_data_t ;


 int obs_data_set_bool (int *,char const*,int) ;

__attribute__((used)) static inline void save_modifier(uint32_t modifiers, obs_data_t *data,
     const char *name, uint32_t flag)
{
 if ((modifiers & flag) == flag)
  obs_data_set_bool(data, name, 1);
}
