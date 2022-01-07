
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int atoi (char*) ;
 int free (char*) ;
 char* r_str_replace (char*,char*,char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static ut32 vernum(const char *s) {



 char *a = strdup (s);
 a = r_str_replace (a, ".", "0", 1);
 char *dash = strchr (a, '-');
 if (dash) {
  *dash = 0;
 }
 ut32 res = atoi (a);
 free (a);
 return res;
}
