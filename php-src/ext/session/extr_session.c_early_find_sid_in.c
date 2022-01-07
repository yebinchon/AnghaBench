
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_bool ;
struct TYPE_3__ {int sname_len; } ;
typedef TYPE_1__ php_session_rfc1867_progress ;


 scalar_t__ IS_STRING ;
 int * PG (int ) ;
 int PS (int ) ;
 int ZVAL_COPY_DEREF (int *,int *) ;
 int Z_ARRVAL (int ) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int http_globals ;
 int session_name ;
 int * zend_hash_str_find (int ,int ,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static zend_bool early_find_sid_in(zval *dest, int where, php_session_rfc1867_progress *progress)
{
 zval *ppid;

 if (Z_ISUNDEF(PG(http_globals)[where])) {
  return 0;
 }

 if ((ppid = zend_hash_str_find(Z_ARRVAL(PG(http_globals)[where]), PS(session_name), progress->sname_len))
   && Z_TYPE_P(ppid) == IS_STRING) {
  zval_ptr_dtor(dest);
  ZVAL_COPY_DEREF(dest, ppid);
  return 1;
 }

 return 0;
}
