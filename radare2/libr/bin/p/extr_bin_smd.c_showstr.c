
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int eprintf (char*,char const*,char*) ;
 int free (char*) ;
 char* r_str_ndup (char const*,int) ;

__attribute__((used)) static void showstr(const char *str, const ut8 *s, int len) {
 char *msg = r_str_ndup ((const char *) s, len);
 eprintf ("%s: %s\n", str, msg);
 free (msg);
}
