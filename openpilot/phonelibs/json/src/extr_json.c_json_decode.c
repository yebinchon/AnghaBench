
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonNode ;


 int json_delete (int *) ;
 int parse_value (char const**,int **) ;
 int skip_space (char const**) ;

JsonNode *json_decode(const char *json)
{
 const char *s = json;
 JsonNode *ret;

 skip_space(&s);
 if (!parse_value(&s, &ret))
  return ((void*)0);

 skip_space(&s);
 if (*s != 0) {
  json_delete(ret);
  return ((void*)0);
 }

 return ret;
}
