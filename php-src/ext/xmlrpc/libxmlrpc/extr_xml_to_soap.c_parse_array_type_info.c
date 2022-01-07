
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array_info {int kids_type; } ;
typedef int buf ;


 scalar_t__ ecalloc (int,int) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char*,char) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct array_info* parse_array_type_info(const char* array_type) {
 struct array_info* ai = ((void*)0);
 if (array_type) {
  ai = (struct array_info*)ecalloc(1, sizeof(struct array_info));
  if (ai) {
   char buf[128], *p;
   snprintf(buf, sizeof(buf), "%s", array_type);
   p = strchr(buf, '[');
   if (p) {
    *p = 0;
   }
   strcpy(ai->kids_type, buf);
  }
 }
 return ai;
}
