
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int r_cons_print (char*) ;
 char* r_syscmd_mkdir (char const*) ;

__attribute__((used)) static int cmd_mkdir(void *data, const char *input) {
 char *res = r_syscmd_mkdir (input);
 if (res) {
  r_cons_print (res);
  free (res);
 }
 return 0;
}
