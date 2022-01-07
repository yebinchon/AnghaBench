
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;


 int free (char*) ;
 int r_list_append (int *,void*) ;
 int * r_list_newf (int (*) (char*)) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static RList* parse_list (const char *str) {
 RList *list;
 char *line, *data, *p, *str_n;

 if (!str) {
  return ((void*)0);
 }

 str_n = strdup (str);
 list = r_list_newf (free);
 if (!list) {
  free (str_n);
  return ((void*)0);
 }
 line = strtok (str_n, "\n");
 data = strchr (line, '=');

 p = strtok (data + 1, ",");

 while (p) {
  r_list_append (list, (void*)strdup (p));
  p = strtok (((void*)0), ",");
 }

 free (str_n);
 return list;
}
