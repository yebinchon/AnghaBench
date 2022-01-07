
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonNode ;


 int append_member (int *,char*,int *) ;
 int free (char*) ;
 int json_delete (int *) ;
 int * json_mkobject () ;
 int parse_string (char const**,char**) ;
 int parse_value (char const**,int **) ;
 int skip_space (char const**) ;

__attribute__((used)) static bool parse_object(const char **sp, JsonNode **out)
{
 const char *s = *sp;
 JsonNode *ret = out ? json_mkobject() : ((void*)0);
 char *key;
 JsonNode *value;

 if (*s++ != '{')
  goto failure;
 skip_space(&s);

 if (*s == '}') {
  s++;
  goto success;
 }

 for (;;) {
  if (!parse_string(&s, out ? &key : ((void*)0)))
   goto failure;
  skip_space(&s);

  if (*s++ != ':')
   goto failure_free_key;
  skip_space(&s);

  if (!parse_value(&s, out ? &value : ((void*)0)))
   goto failure_free_key;
  skip_space(&s);

  if (out)
   append_member(ret, key, value);

  if (*s == '}') {
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

failure_free_key:
 if (out)
  free(key);
failure:
 json_delete(ret);
 return 0;
}
