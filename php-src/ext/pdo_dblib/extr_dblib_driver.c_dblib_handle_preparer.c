
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {int error_code; int supports_placeholders; int * methods; TYPE_3__* driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {int sqlstate; } ;
struct TYPE_10__ {TYPE_1__ err; scalar_t__ computed_column_name_count; int * H; } ;
typedef TYPE_3__ pdo_dblib_stmt ;
typedef int pdo_dblib_db_handle ;
struct TYPE_11__ {scalar_t__ driver_data; } ;
typedef TYPE_4__ pdo_dbh_t ;


 int PDO_PLACEHOLDER_NONE ;
 int dblib_stmt_methods ;
 TYPE_3__* ecalloc (int,int) ;

__attribute__((used)) static int dblib_handle_preparer(pdo_dbh_t *dbh, const char *sql, size_t sql_len, pdo_stmt_t *stmt, zval *driver_options)
{
 pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;
 pdo_dblib_stmt *S = ecalloc(1, sizeof(*S));

 S->H = H;
 stmt->driver_data = S;
 stmt->methods = &dblib_stmt_methods;
 stmt->supports_placeholders = PDO_PLACEHOLDER_NONE;
 S->computed_column_name_count = 0;
 S->err.sqlstate = stmt->error_code;

 return 1;
}
