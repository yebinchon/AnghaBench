
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_magic {int dummy; } ;
typedef int errmsg ;
typedef int RRegex ;
typedef int RMagic ;


 int R_MAGIC_DESC ;
 int R_REGEX_EXTENDED ;
 int R_REGEX_NOSUB ;
 int file_magerror (int *,char*,int,char*) ;
 int r_regex_comp (int *,char*,int) ;
 int r_regex_error (int,int *,char*,int) ;
 int r_regex_exec (int *,int ,int ,int ,int ) ;
 int r_regex_fini (int *) ;
 int strchr (int ,char) ;

__attribute__((used)) static int check_fmt(RMagic *ms, struct r_magic *m) {
 RRegex rx;
 int rc;

 if (!strchr (R_MAGIC_DESC, '%')) {
  return 0;
 }

 rc = r_regex_comp (&rx, "%[-0-9\\.]*s", R_REGEX_EXTENDED|R_REGEX_NOSUB);
 if (rc) {
  char errmsg[512];
  r_regex_error (rc, &rx, errmsg, sizeof (errmsg) - 1);
  file_magerror (ms, "regex error %d, (%s)", rc, errmsg);
  return -1;
 } else {
  rc = r_regex_exec (&rx, R_MAGIC_DESC, 0, 0, 0);
  r_regex_fini (&rx);
  return !rc;
 }
}
