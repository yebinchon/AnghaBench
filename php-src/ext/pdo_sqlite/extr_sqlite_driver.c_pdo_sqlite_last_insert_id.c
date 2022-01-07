
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db; } ;
typedef TYPE_1__ pdo_sqlite_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 char* php_pdo_int64_to_str (int ) ;
 int sqlite3_last_insert_rowid (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *pdo_sqlite_last_insert_id(pdo_dbh_t *dbh, const char *name, size_t *len)
{
 pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;
 char *id;

 id = php_pdo_int64_to_str(sqlite3_last_insert_rowid(H->db));
 *len = strlen(id);
 return id;
}
