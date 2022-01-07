
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdo_dbh_t ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,int *) ;
 int PDO_DBG_RETURN (int) ;
 int ZEND_STRL (char*) ;
 scalar_t__ mysql_handle_doer (int *,int ) ;

__attribute__((used)) static int mysql_handle_begin(pdo_dbh_t *dbh)
{
 PDO_DBG_ENTER("mysql_handle_quoter");
 PDO_DBG_INF_FMT("dbh=%p", dbh);
 PDO_DBG_RETURN(0 <= mysql_handle_doer(dbh, ZEND_STRL("START TRANSACTION")));
}
