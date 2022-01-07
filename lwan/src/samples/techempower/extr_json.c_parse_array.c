
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonNode ;


 int json_append_element (int *,int *) ;
 int json_delete (int *) ;
 int * json_mkarray () ;
 int parse_value (char const**,int **) ;
 int skip_space (char const**) ;

__attribute__((used)) static bool parse_array(const char **sp, JsonNode **out)
{
 const char *s = *sp;
 JsonNode *ret = out ? json_mkarray() : ((void*)0);
 JsonNode *element;

 if (*s++ != '[')
  goto failure;
 skip_space(&s);

 if (*s == ']') {
  s++;
  goto success;
 }

 for (;;) {
  if (!parse_value(&s, out ? &element : ((void*)0)))
   goto failure;
  skip_space(&s);

  if (out)
   json_append_element(ret, element);

  if (*s == ']') {
   s++;
   goto success;
  }

  if (*s++ != ',')
   goto failure;
  skip_space(&s);
 }

success:
 *sp = s;
 if (out)
  *out = ret;
 return 1;

failure:
 json_delete(ret);
 return 0;
}
