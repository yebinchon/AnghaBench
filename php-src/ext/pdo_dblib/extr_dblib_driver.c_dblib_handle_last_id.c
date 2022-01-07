
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
typedef TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef scalar_t__ RETCODE ;
typedef int DBINT ;
typedef int BYTE ;


 scalar_t__ FAIL ;
 scalar_t__ NO_MORE_RESULTS ;
 scalar_t__ NO_MORE_ROWS ;
 int SQLCHAR ;
 int dbcancel (int ) ;
 scalar_t__ dbcmd (int ,char*) ;
 int dbcoltype (int ,int) ;
 size_t dbconvert (int *,int ,int ,scalar_t__,int ,int *,int ) ;
 int dbdata (int ,int) ;
 scalar_t__ dbdatlen (int ,int) ;
 scalar_t__ dbnextrow (int ) ;
 scalar_t__ dbresults (int ) ;
 scalar_t__ dbsqlexec (int ) ;
 char* emalloc (int) ;

char *dblib_handle_last_id(pdo_dbh_t *dbh, const char *name, size_t *len)
{
 pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;

 RETCODE ret;
 char *id = ((void*)0);





 if (FAIL == dbcmd(H->link, "SELECT @@IDENTITY")) {
  return ((void*)0);
 }

 if (FAIL == dbsqlexec(H->link)) {
  return ((void*)0);
 }

 ret = dbresults(H->link);
 if (ret == FAIL || ret == NO_MORE_RESULTS) {
  dbcancel(H->link);
  return ((void*)0);
 }

 ret = dbnextrow(H->link);

 if (ret == FAIL || ret == NO_MORE_ROWS) {
  dbcancel(H->link);
  return ((void*)0);
 }

 if (dbdatlen(H->link, 1) == 0) {
  dbcancel(H->link);
  return ((void*)0);
 }

 id = emalloc(32);
 *len = dbconvert(((void*)0), (dbcoltype(H->link, 1)) , (dbdata(H->link, 1)) , (dbdatlen(H->link, 1)), SQLCHAR, (BYTE *)id, (DBINT)-1);

 dbcancel(H->link);
 return id;
}
