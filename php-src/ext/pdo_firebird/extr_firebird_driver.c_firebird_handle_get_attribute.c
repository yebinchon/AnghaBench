
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {int fetch_table_names; int db; } ;
typedef TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_5__ {int auto_commit; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int (* info_func_t ) (char*) ;
typedef int HMODULE ;


 int GetModuleHandle (char*) ;
 int GetProcAddress (int ,char*) ;






 int RTLD_DEFAULT ;
 int ZVAL_BOOL (int *,int) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,char*) ;
 int dlsym (int ,char*) ;
 int firebird_info_cb ;
 int isc_version (int *,int ,void*) ;

__attribute__((used)) static int firebird_handle_get_attribute(pdo_dbh_t *dbh, zend_long attr, zval *val)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;

 switch (attr) {
  char tmp[512];

  case 133:
   ZVAL_LONG(val,dbh->auto_commit);
   return 1;

  case 131:
   ZVAL_BOOL(val, !isc_version(&H->db, firebird_info_cb, ((void*)0)));
   return 1;

  case 132: {

   info_func_t info_func = ((void*)0);

   info_func = (info_func_t)dlsym(RTLD_DEFAULT, "isc_get_client_version");
   if (info_func) {
    info_func(tmp);
    ZVAL_STRING(val, tmp);
   }



   }
   return 1;

  case 128:
  case 129:
   *tmp = 0;

   if (!isc_version(&H->db, firebird_info_cb, (void*)tmp)) {
    ZVAL_STRING(val, tmp);
    return 1;
   }

  case 130:
   ZVAL_BOOL(val, H->fetch_table_names);
   return 1;
 }
 return 0;
}
