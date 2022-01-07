
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdo_dbh_t ;
typedef enum pdo_param_type { ____Placeholder_pdo_param_type } pdo_param_type ;


 char* safe_emalloc (int,size_t,int) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int sqlite_handle_quoter(pdo_dbh_t *dbh, const char *unquoted, size_t unquotedlen, char **quoted, size_t *quotedlen, enum pdo_param_type paramtype )
{
 *quoted = safe_emalloc(2, unquotedlen, 3);
 sqlite3_snprintf(2*unquotedlen + 3, *quoted, "'%q'", unquoted);
 *quotedlen = strlen(*quoted);
 return 1;
}
