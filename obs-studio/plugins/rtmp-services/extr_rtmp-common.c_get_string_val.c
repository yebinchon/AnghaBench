
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_is_string (int *) ;
 int * json_object_get (int *,char const*) ;
 char const* json_string_value (int *) ;

__attribute__((used)) static inline const char *get_string_val(json_t *service, const char *key)
{
 json_t *str_val = json_object_get(service, key);
 if (!str_val || !json_is_string(str_val))
  return ((void*)0);

 return json_string_value(str_val);
}
