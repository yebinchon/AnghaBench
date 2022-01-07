
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int assume_utf8; } ;
typedef TYPE_1__ pdo_odbc_stmt ;
typedef int SWORD ;






__attribute__((used)) static int pdo_odbc_sqltype_is_unicode(pdo_odbc_stmt *S, SWORD sqltype)
{
 if (!S->assume_utf8) return 0;
 switch (sqltype) {

  case 130:
   return 1;


  case 129:
   return 1;


  case 128:
   return 1;

  default:
   return 0;
 }
}
