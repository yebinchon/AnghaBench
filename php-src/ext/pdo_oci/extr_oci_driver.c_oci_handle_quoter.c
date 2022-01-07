
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdo_dbh_t ;
typedef enum pdo_param_type { ____Placeholder_pdo_param_type } pdo_param_type ;


 char* emalloc (size_t) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static int oci_handle_quoter(pdo_dbh_t *dbh, const char *unquoted, size_t unquotedlen, char **quoted, size_t *quotedlen, enum pdo_param_type paramtype )
{
 int qcount = 0;
 char const *cu, *l, *r;
 char *c;

 if (!unquotedlen) {
  *quotedlen = 2;
  *quoted = emalloc(*quotedlen+1);
  strcpy(*quoted, "''");
  return 1;
 }


 for (cu = unquoted; (cu = strchr(cu,'\'')); qcount++, cu++)
  ;

 *quotedlen = unquotedlen + qcount + 2;
 *quoted = c = emalloc(*quotedlen+1);
 *c++ = '\'';


 for (l = unquoted; (r = strchr(l,'\'')); l = r+1) {
  strncpy(c, l, r-l+1);
  c += (r-l+1);
  *c++ = '\'';
 }


 strncpy(c, l, *quotedlen-(c-*quoted)-1);
 (*quoted)[*quotedlen-1] = '\'';
 (*quoted)[*quotedlen] = '\0';

 return 1;
}
