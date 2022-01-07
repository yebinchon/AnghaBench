
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef size_t zend_long ;
struct TYPE_6__ {int sql_dialect; int tr; int isc_status; int db; } ;
typedef TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_7__ {int in_txn; scalar_t__ auto_commit; int error_code; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int isc_stmt_handle ;
typedef int XSQLDA ;
typedef int HashTable ;


 int RECORD_ERROR (TYPE_2__*) ;
 int ZVAL_LONG (int *,size_t) ;
 int efree (char*) ;
 char* emalloc (size_t) ;
 int firebird_handle_begin (TYPE_2__*) ;
 scalar_t__ isc_dsql_allocate_statement (int ,int *,int *) ;
 scalar_t__ isc_dsql_prepare (int ,int *,int *,int ,char*,int ,int *) ;
 int strcpy (int ,char*) ;
 int zend_hash_str_update (int *,char*,unsigned int,int *) ;

__attribute__((used)) static int firebird_alloc_prepare_stmt(pdo_dbh_t *dbh, const char *sql, size_t sql_len,
 XSQLDA *out_sqlda, isc_stmt_handle *s, HashTable *named_params)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;
 char *c, *new_sql, in_quote, in_param, pname[64], *ppname;
 zend_long l, pindex = -1;


 if (sql_len > 65536) {
  strcpy(dbh->error_code, "01004");
  return 0;
 }


 if (dbh->auto_commit && !dbh->in_txn) {


  if (!firebird_handle_begin(dbh)) {
   return 0;
  }
  dbh->in_txn = 1;
 }


 if (isc_dsql_allocate_statement(H->isc_status, &H->db, s)) {
  RECORD_ERROR(dbh);
  return 0;
 }



 new_sql = c = emalloc(sql_len+1);

 for (l = in_quote = in_param = 0; l <= sql_len; ++l) {
  if ( !(in_quote ^= (sql[l] == '\''))) {
   if (!in_param) {
    switch (sql[l]) {
     case ':':
      in_param = 1;
      ppname = pname;
      *ppname++ = sql[l];
     case '?':
      *c++ = '?';
      ++pindex;
     continue;
    }
   } else {
                                if ((in_param &= ((sql[l] >= 'A' && sql[l] <= 'Z') || (sql[l] >= 'a' && sql[l] <= 'z')
                                        || (sql[l] >= '0' && sql[l] <= '9') || sql[l] == '_' || sql[l] == '-'))) {


     *ppname++ = sql[l];
     continue;
    } else {
     *ppname++ = 0;
     if (named_params) {
      zval tmp;
      ZVAL_LONG(&tmp, pindex);
      zend_hash_str_update(named_params, pname, (unsigned int)(ppname - pname - 1), &tmp);
     }
    }
   }
  }
  *c++ = sql[l];
 }


 if (isc_dsql_prepare(H->isc_status, &H->tr, s, 0, new_sql, H->sql_dialect, out_sqlda)) {
  RECORD_ERROR(dbh);
  efree(new_sql);
  return 0;
 }

 efree(new_sql);
 return 1;
}
