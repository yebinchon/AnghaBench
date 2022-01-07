
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int zval ;
typedef int result ;
struct TYPE_14__ {int column_count; int supports_placeholders; int * methods; TYPE_2__* driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_18__ {int sqln; void* version; } ;
struct TYPE_15__ {int sqln; int sqld; char statement_type; struct TYPE_15__* in_sqlda; void* version; TYPE_7__ out_sqlda; int * named_params; void* fetch_buf; int stmt; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_firebird_stmt ;
struct TYPE_16__ {int isc_status; } ;
typedef TYPE_3__ pdo_firebird_db_handle ;
struct TYPE_17__ {scalar_t__ driver_data; } ;
typedef TYPE_4__ pdo_dbh_t ;
typedef int isc_stmt_handle ;
typedef int info ;
typedef TYPE_2__ XSQLDA ;
typedef int HashTable ;


 int ALLOC_HASHTABLE (int *) ;
 int FREE_HASHTABLE (int *) ;
 void* PDO_FB_SQLDA_VERSION ;
 int PDO_FIREBIRD_HANDLE_INITIALIZER ;
 int PDO_PLACEHOLDER_POSITIONAL ;
 int RECORD_ERROR (TYPE_4__*) ;
 int XSQLDA_LENGTH (int) ;
 int const_cast (char const*) ;
 void* ecalloc (int,int) ;
 int efree (TYPE_2__*) ;
 int firebird_alloc_prepare_stmt (TYPE_4__*,char const*,size_t,TYPE_2__*,int *,int *) ;
 int firebird_stmt_methods ;
 scalar_t__ isc_dsql_describe (int ,int *,void*,TYPE_7__*) ;
 scalar_t__ isc_dsql_describe_bind (int ,int *,void*,TYPE_2__*) ;
 scalar_t__ isc_dsql_sql_info (int ,int *,int,int ,int,char*) ;

 int zend_hash_destroy (int *) ;
 int zend_hash_init (int *,int,int *,int *,int ) ;

__attribute__((used)) static int firebird_handle_preparer(pdo_dbh_t *dbh, const char *sql, size_t sql_len,
 pdo_stmt_t *stmt, zval *driver_options)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;
 pdo_firebird_stmt *S = ((void*)0);
 HashTable *np;

 do {
  isc_stmt_handle s = PDO_FIREBIRD_HANDLE_INITIALIZER;
  XSQLDA num_sqlda;
  static char const info[] = { 128 };
  char result[8];

  num_sqlda.version = PDO_FB_SQLDA_VERSION;
  num_sqlda.sqln = 1;

  ALLOC_HASHTABLE(np);
  zend_hash_init(np, 8, ((void*)0), ((void*)0), 0);


  if (!firebird_alloc_prepare_stmt(dbh, sql, sql_len, &num_sqlda, &s, np)) {
   break;
  }


  S = ecalloc(1, sizeof(*S)-sizeof(XSQLDA) + XSQLDA_LENGTH(num_sqlda.sqld));
  S->H = H;
  S->stmt = s;
  S->fetch_buf = ecalloc(1,sizeof(char*) * num_sqlda.sqld);
  S->out_sqlda.version = PDO_FB_SQLDA_VERSION;
  S->out_sqlda.sqln = stmt->column_count = num_sqlda.sqld;
  S->named_params = np;


  if (isc_dsql_sql_info(H->isc_status, &s, sizeof(info), const_cast(info), sizeof(result),
    result)) {
   break;
  }
  S->statement_type = result[3];


  if (isc_dsql_describe(H->isc_status, &s, PDO_FB_SQLDA_VERSION, &S->out_sqlda)) {
   RECORD_ERROR(dbh);
   break;
  }


  if (isc_dsql_describe_bind(H->isc_status, &s, PDO_FB_SQLDA_VERSION, &num_sqlda)) {
   break;
  }

  if (num_sqlda.sqld) {
   S->in_sqlda = ecalloc(1,XSQLDA_LENGTH(num_sqlda.sqld));
   S->in_sqlda->version = PDO_FB_SQLDA_VERSION;
   S->in_sqlda->sqln = num_sqlda.sqld;

   if (isc_dsql_describe_bind(H->isc_status, &s, PDO_FB_SQLDA_VERSION, S->in_sqlda)) {
    break;
   }
  }

  stmt->driver_data = S;
  stmt->methods = &firebird_stmt_methods;
  stmt->supports_placeholders = PDO_PLACEHOLDER_POSITIONAL;

  return 1;

 } while (0);

 RECORD_ERROR(dbh);

 zend_hash_destroy(np);
 FREE_HASHTABLE(np);

 if (S) {
  if (S->in_sqlda) {
   efree(S->in_sqlda);
  }
  efree(S);
 }

 return 0;
}
