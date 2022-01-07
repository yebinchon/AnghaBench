
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_7__ {int * errmsg; scalar_t__ errcode; } ;
struct TYPE_8__ {int db; TYPE_1__ einfo; } ;
typedef TYPE_2__ pdo_sqlite_db_handle ;
struct TYPE_9__ {int alloc_own_columns; int max_escaped_char_length; int * methods; int data_source; TYPE_2__* driver_data; int is_persistent; } ;
typedef TYPE_3__ pdo_dbh_t ;


 int PDO_ATTR_TIMEOUT ;
 int PDO_SQLITE_ATTR_OPEN_FLAGS ;
 scalar_t__* PG (int ) ;
 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_READWRITE ;
 int authorizer ;
 int efree (char*) ;
 char* make_filename_safe (int ) ;
 int open_basedir ;
 int pdo_attr_lval (int *,int ,int) ;
 int pdo_sqlite_error (TYPE_3__*) ;
 TYPE_2__* pecalloc (int,int,int ) ;
 int php_pdo_get_exception () ;
 int sqlite3_busy_timeout (int ,int) ;
 int sqlite3_open_v2 (char*,int *,int,int *) ;
 int sqlite3_set_authorizer (int ,int ,int *) ;
 int sqlite_methods ;
 int zend_throw_exception_ex (int ,int ,char*,int ) ;

__attribute__((used)) static int pdo_sqlite_handle_factory(pdo_dbh_t *dbh, zval *driver_options)
{
 pdo_sqlite_db_handle *H;
 int i, ret = 0;
 zend_long timeout = 60, flags;
 char *filename;

 H = pecalloc(1, sizeof(pdo_sqlite_db_handle), dbh->is_persistent);

 H->einfo.errcode = 0;
 H->einfo.errmsg = ((void*)0);
 dbh->driver_data = H;

 filename = make_filename_safe(dbh->data_source);

 if (!filename) {
  zend_throw_exception_ex(php_pdo_get_exception(), 0,
   "open_basedir prohibits opening %s",
   dbh->data_source);
  goto cleanup;
 }

 flags = pdo_attr_lval(driver_options, PDO_SQLITE_ATTR_OPEN_FLAGS, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE);

 i = sqlite3_open_v2(filename, &H->db, flags, ((void*)0));

 efree(filename);

 if (i != SQLITE_OK) {
  pdo_sqlite_error(dbh);
  goto cleanup;
 }

 if (PG(open_basedir) && *PG(open_basedir)) {
  sqlite3_set_authorizer(H->db, authorizer, ((void*)0));
 }

 if (driver_options) {
  timeout = pdo_attr_lval(driver_options, PDO_ATTR_TIMEOUT, timeout);
 }
 sqlite3_busy_timeout(H->db, timeout * 1000);

 dbh->alloc_own_columns = 1;
 dbh->max_escaped_char_length = 2;

 ret = 1;

cleanup:
 dbh->methods = &sqlite_methods;

 return ret;
}
