
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;


 scalar_t__ UT64_MAX ;
 int filter_count ;
 scalar_t__ filter_format ;
 scalar_t__ filter_offset ;
 int free (char*) ;
 int r_cons_printf (char*,char const*,...) ;
 scalar_t__ sdb_atoi (char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int print_addrinfo (void *user, const char *k, const char *v) {
 ut64 offset = sdb_atoi (k);
 if (!offset || offset == UT64_MAX) {
  return 1;
 }
 char *subst = strdup (v);
 char *colonpos = strchr (subst, '|');
 if (!colonpos) {
  colonpos = strchr (subst, ':');
 }
 if (!colonpos) {
  r_cons_printf ("%s\n", subst);
 }
 if (colonpos && (filter_offset == UT64_MAX || filter_offset == offset)) {
  if (filter_format) {
   *colonpos = ':';
   r_cons_printf ("CL %s %s\n", k, subst);
  } else {
   *colonpos = 0;
   r_cons_printf ("file: %s\nline: %s\n", subst, colonpos + 1);
  }
  filter_count++;
 }
 free (subst);

 return 1;
}
