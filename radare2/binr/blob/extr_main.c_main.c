
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RMain ;


 int r_main_free (int *) ;
 int * r_main_new (char*) ;
 int r_main_run (int *,int,char**) ;

int main(int argc, char **argv) {
 int rc = 1;
 RMain *m = r_main_new (argv[0]);
 if (m) {
  rc = r_main_run (m, argc, argv);
  r_main_free (m);
 }
 return rc;
}
