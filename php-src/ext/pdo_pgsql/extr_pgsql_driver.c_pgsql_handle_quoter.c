
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server; } ;
typedef TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef enum pdo_param_type { ____Placeholder_pdo_param_type } pdo_param_type ;



 unsigned char* PQescapeByteaConn (int ,unsigned char*,size_t,size_t*) ;
 size_t PQescapeStringConn (int ,char*,char const*,size_t,int *) ;
 int PQfreemem (unsigned char*) ;
 char* emalloc (size_t) ;
 int memcpy (char*,unsigned char*,size_t) ;
 char* safe_emalloc (int,size_t,int) ;

__attribute__((used)) static int pgsql_handle_quoter(pdo_dbh_t *dbh, const char *unquoted, size_t unquotedlen, char **quoted, size_t *quotedlen, enum pdo_param_type paramtype)
{
 unsigned char *escaped;
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
 size_t tmp_len;

 switch (paramtype) {
  case 128:

   escaped = PQescapeByteaConn(H->server, (unsigned char *)unquoted, unquotedlen, &tmp_len);
   *quotedlen = tmp_len + 1;
   *quoted = emalloc(*quotedlen + 1);
   memcpy((*quoted)+1, escaped, *quotedlen-2);
   (*quoted)[0] = '\'';
   (*quoted)[*quotedlen-1] = '\'';
   (*quoted)[*quotedlen] = '\0';
   PQfreemem(escaped);
   break;
  default:
   *quoted = safe_emalloc(2, unquotedlen, 3);
   (*quoted)[0] = '\'';
   *quotedlen = PQescapeStringConn(H->server, *quoted + 1, unquoted, unquotedlen, ((void*)0));
   (*quoted)[*quotedlen + 1] = '\'';
   (*quoted)[*quotedlen + 2] = '\0';
   *quotedlen += 2;
 }
 return 1;
}
