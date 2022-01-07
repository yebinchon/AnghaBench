
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errorno; int sqlstate; int reason; } ;
typedef TYPE_1__ MYSQLI_WARNING ;


 int ZSTR_DUPLICATE ;
 int ZVAL_UTF8_STRING (int *,char const*,int ) ;
 int ZVAL_UTF8_STRINGL (int *,char*,int,int ) ;
 scalar_t__ ecalloc (int,int) ;

__attribute__((used)) static
MYSQLI_WARNING *php_new_warning(const char *reason, int errorno)
{
 MYSQLI_WARNING *w;

 w = (MYSQLI_WARNING *)ecalloc(1, sizeof(MYSQLI_WARNING));

 ZVAL_UTF8_STRING(&(w->reason), reason, ZSTR_DUPLICATE);

 ZVAL_UTF8_STRINGL(&(w->sqlstate), "HY000", sizeof("HY000") - 1, ZSTR_DUPLICATE);

 w->errorno = errorno;

 return w;
}
