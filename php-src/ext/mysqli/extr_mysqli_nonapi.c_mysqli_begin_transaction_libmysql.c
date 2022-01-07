
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ zend_bool ;
struct TYPE_5__ {scalar_t__ s; int member_0; } ;
typedef TYPE_1__ smart_str ;
typedef int MYSQL ;


 int E_WARNING ;
 scalar_t__ FALSE ;
 unsigned int const TRANS_START_READ_ONLY ;
 unsigned int const TRANS_START_READ_WRITE ;
 unsigned int const TRANS_START_WITH_CONSISTENT_SNAPSHOT ;
 scalar_t__ TRUE ;
 char* ZSTR_VAL (scalar_t__) ;
 int efree (char*) ;
 long mysql_get_server_version (int *) ;
 int mysql_real_query (int *,char*,unsigned int) ;
 char* mysqli_escape_string_for_tx_name_in_comment (char const* const) ;
 int php_error_docref (int *,int ,char*) ;
 int smart_str_0 (TYPE_1__*) ;
 int smart_str_appendl (TYPE_1__*,char*,int) ;
 int smart_str_free (TYPE_1__*) ;
 unsigned int spprintf (char**,int ,char*,char*,char*) ;

__attribute__((used)) static int mysqli_begin_transaction_libmysql(MYSQL * conn, const unsigned int mode, const char * const name)
{
 int ret;
 zend_bool err = FALSE;
 smart_str tmp_str = {0};
 if (mode & TRANS_START_WITH_CONSISTENT_SNAPSHOT) {
  if (tmp_str.s) {
   smart_str_appendl(&tmp_str, ", ", sizeof(", ") - 1);
  }
  smart_str_appendl(&tmp_str, "WITH CONSISTENT SNAPSHOT", sizeof("WITH CONSISTENT SNAPSHOT") - 1);
 }
 if (mode & (TRANS_START_READ_WRITE | TRANS_START_READ_ONLY)) {
  if (mysql_get_server_version(conn) < 50605L) {
   php_error_docref(((void*)0), E_WARNING, "This server version doesn't support 'READ WRITE' and 'READ ONLY'. Minimum 5.6.5 is required");
   err = TRUE;
  } else if (mode & TRANS_START_READ_WRITE) {
   if (tmp_str.s) {
    smart_str_appendl(&tmp_str, ", ", sizeof(", ") - 1);
   }
   smart_str_appendl(&tmp_str, "READ WRITE", sizeof("READ WRITE") - 1);
  } else if (mode & TRANS_START_READ_ONLY) {
   if (tmp_str.s) {
    smart_str_appendl(&tmp_str, ", ", sizeof(", ") - 1);
   }
   smart_str_appendl(&tmp_str, "READ ONLY", sizeof("READ ONLY") - 1);
  }
 }
 smart_str_0(&tmp_str);

 if (err == FALSE){
  char * name_esc = mysqli_escape_string_for_tx_name_in_comment(name);
  char * query;
  unsigned int query_len = spprintf(&query, 0, "START TRANSACTION%s %s",
            name_esc? name_esc:"", tmp_str.s? ZSTR_VAL(tmp_str.s):"");

  smart_str_free(&tmp_str);
  if (name_esc) {
   efree(name_esc);
  }

  ret = mysql_real_query(conn, query, query_len);
  efree(query);
 }
 return ret;
}
