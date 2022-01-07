
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server; } ;
typedef TYPE_1__ pdo_mysql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_RETURN (char*) ;
 int mysql_insert_id (int ) ;
 char* php_pdo_int64_to_str (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *pdo_mysql_last_insert_id(pdo_dbh_t *dbh, const char *name, size_t *len)
{
 pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;
 char *id = php_pdo_int64_to_str(mysql_insert_id(H->server));
 PDO_DBG_ENTER("pdo_mysql_last_insert_id");
 *len = strlen(id);
 PDO_DBG_RETURN(id);
}
