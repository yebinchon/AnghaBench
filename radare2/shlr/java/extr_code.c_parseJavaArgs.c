
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int r_num_math (int *,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int parseJavaArgs(char *str, ut64 *args, int args_sz) {
 int i, nargs = -1;
 char *q, *p = strchr (str, ' ');
 if (p) {
  *p++ = 0;
  nargs ++;
  for (i = 0; i < args_sz; i++) {
   nargs ++;
   q = strchr (p, ' ');
   if (q) {
    *q++ = 0;
   }
   args[i] = r_num_math (((void*)0), p);
   if (q) {
    p = q;
   } else {
    break;
   }
  }
 }
 return nargs;
}
