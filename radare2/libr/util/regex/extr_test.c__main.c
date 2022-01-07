
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRegex ;


 int R_REGEX_NOSUB ;
 int printf (char*,...) ;
 int r_regex_comp (int *,char*,int ) ;
 int r_regex_exec (int *,char*,int ,int ,int ) ;
 int r_regex_free (int *) ;

int _main() {
 RRegex rx;
 int rc = r_regex_comp (&rx, "^hi", R_REGEX_NOSUB);
 if (rc) {
  printf ("error\n");

 } else {
  rc = r_regex_exec (&rx, "patata", 0, 0, 0);
  printf ("out = %d\n", rc);

  rc = r_regex_exec (&rx, "hillow", 0, 0, 0);
  printf ("out = %d\n", rc);
 }
 r_regex_free (&rx);
 return 0;
}
