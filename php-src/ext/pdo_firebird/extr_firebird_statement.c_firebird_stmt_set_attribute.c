
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_7__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {int name; int stmt; TYPE_1__* H; } ;
typedef TYPE_3__ pdo_firebird_stmt ;
struct TYPE_6__ {int isc_status; } ;



 int RECORD_ERROR (TYPE_2__*) ;
 int Z_STRVAL_P (int *) ;
 int isc_dsql_set_cursor_name (int ,int *,int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int try_convert_to_string (int *) ;

__attribute__((used)) static int firebird_stmt_set_attribute(pdo_stmt_t *stmt, zend_long attr, zval *val)
{
 pdo_firebird_stmt *S = (pdo_firebird_stmt*)stmt->driver_data;

 switch (attr) {
  default:
   return 0;
  case 128:
   if (!try_convert_to_string(val)) {
    return 0;
   }

   if (isc_dsql_set_cursor_name(S->H->isc_status, &S->stmt, Z_STRVAL_P(val),0)) {
    RECORD_ERROR(stmt);
    return 0;
   }
   strlcpy(S->name, Z_STRVAL_P(val), sizeof(S->name));
   break;
 }
 return 1;
}
