
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;


 int obs_property_list_add_string (int *,char const* const,char const* const) ;

__attribute__((used)) static inline void add_strings(obs_property_t *list, const char *const *strings)
{
 while (*strings) {
  obs_property_list_add_string(list, *strings, *strings);
  strings++;
 }
}
