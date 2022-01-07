
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;


 int free (char*) ;
 int r_list_append (int *,void*) ;
 int * r_list_newf (int (*) (char*)) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;
 scalar_t__ strtol (char*,int *,int ) ;

__attribute__((used)) static RList* get_constants(const char *str) {
 RList *list;
 char *p, *data;
 if (!str) {
  return ((void*)0);
 }

 data = strdup (str);
 list = r_list_newf (free);
 p = strtok (data, ",");
 while (p) {
  if (strtol (p, ((void*)0), 0)) {
   r_list_append (list, (void*)strdup (p));
  }
  p = strtok (((void*)0), ",");
 }
 free (data);
 return list;
}
