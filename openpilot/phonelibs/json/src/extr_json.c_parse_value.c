
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonNode ;


 int expect_literal (char const**,char*) ;
 int * json_mkbool (int) ;
 int * json_mknull () ;
 int * json_mknumber (double) ;
 int * mkstring (char*) ;
 int parse_array (char const**,int **) ;
 int parse_number (char const**,double*) ;
 int parse_object (char const**,int **) ;
 int parse_string (char const**,char**) ;

__attribute__((used)) static bool parse_value(const char **sp, JsonNode **out)
{
 const char *s = *sp;

 switch (*s) {
  case 'n':
   if (expect_literal(&s, "null")) {
    if (out)
     *out = json_mknull();
    *sp = s;
    return 1;
   }
   return 0;

  case 'f':
   if (expect_literal(&s, "false")) {
    if (out)
     *out = json_mkbool(0);
    *sp = s;
    return 1;
   }
   return 0;

  case 't':
   if (expect_literal(&s, "true")) {
    if (out)
     *out = json_mkbool(1);
    *sp = s;
    return 1;
   }
   return 0;

  case '"': {
   char *str;
   if (parse_string(&s, out ? &str : ((void*)0))) {
    if (out)
     *out = mkstring(str);
    *sp = s;
    return 1;
   }
   return 0;
  }

  case '[':
   if (parse_array(&s, out)) {
    *sp = s;
    return 1;
   }
   return 0;

  case '{':
   if (parse_object(&s, out)) {
    *sp = s;
    return 1;
   }
   return 0;

  default: {
   double num;
   if (parse_number(&s, out ? &num : ((void*)0))) {
    if (out)
     *out = json_mknumber(num);
    *sp = s;
    return 1;
   }
   return 0;
  }
 }
}
