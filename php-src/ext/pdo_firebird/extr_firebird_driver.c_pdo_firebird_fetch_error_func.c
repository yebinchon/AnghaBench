
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
typedef int pdo_stmt_t ;
struct TYPE_4__ {scalar_t__ last_app_error; int * isc_status; } ;
typedef TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int buf ;
typedef int ISC_STATUS ;


 int add_next_index_long (int *,int) ;
 int add_next_index_string (int *,char*) ;
 char* const_cast (scalar_t__) ;
 int fb_interpret (char*,int,int const**) ;
 int isc_sqlcode (int const*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int pdo_firebird_fetch_error_func(pdo_dbh_t *dbh, pdo_stmt_t *stmt, zval *info)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;
 const ISC_STATUS *s = H->isc_status;
 char buf[400];
 zend_long i = 0, l, sqlcode = isc_sqlcode(s);

 if (sqlcode) {
  add_next_index_long(info, sqlcode);

  while ((sizeof(buf)>(i+2))&&(l = fb_interpret(&buf[i],(sizeof(buf)-i-2),&s))) {
   i += l;
   strcpy(&buf[i++], " ");
  }
  add_next_index_string(info, buf);
 } else if (H->last_app_error) {
  add_next_index_long(info, -999);
  add_next_index_string(info, const_cast(H->last_app_error));
 }
 return 1;
}
