
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* cb ) (char const*) ;} ;


 TYPE_1__* bbcmds ;
 int free (char*) ;
 int printf (char*,char*) ;
 char* stub1 (char const*) ;

__attribute__((used)) static int run(int i, const char *arg) {
 char *res = bbcmds[i].cb (arg);
 if (res) {
  printf ("%s", res);
  free (res);
  return 0;
 }
 return 1;
}
