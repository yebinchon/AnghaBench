
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_is_boolean (int *) ;
 int json_is_true (int *) ;
 int * json_object_get (int *,char const*) ;

__attribute__((used)) static inline bool get_bool_val(json_t *service, const char *key)
{
 json_t *bool_val = json_object_get(service, key);
 if (!bool_val || !json_is_boolean(bool_val))
  return 0;

 return json_is_true(bool_val);
}
