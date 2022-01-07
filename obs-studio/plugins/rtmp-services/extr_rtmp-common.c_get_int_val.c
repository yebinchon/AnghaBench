
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 scalar_t__ json_integer_value (int *) ;
 int json_is_integer (int *) ;
 int * json_object_get (int *,char const*) ;

__attribute__((used)) static inline int get_int_val(json_t *service, const char *key)
{
 json_t *integer_val = json_object_get(service, key);
 if (!integer_val || !json_is_integer(integer_val))
  return 0;

 return (int)json_integer_value(integer_val);
}
