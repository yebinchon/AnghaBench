
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
struct TYPE_7__ {scalar_t__ column_count; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {TYPE_3__* H; } ;
typedef TYPE_2__ pdo_dblib_stmt ;
struct TYPE_9__ {int link; } ;
typedef TYPE_3__ pdo_dblib_db_handle ;
struct TYPE_10__ {scalar_t__ scale; scalar_t__ precision; } ;
typedef TYPE_4__ DBTYPEINFO ;


 int FAILURE ;
 int PDO_PARAM_INT ;
 int PDO_PARAM_STR ;




 int add_assoc_long (int *,char*,int) ;
 int add_assoc_string (int *,char*,int ) ;
 int array_init (int *) ;
 int dbcollen (int ,scalar_t__) ;
 int dbcolsource (int ,scalar_t__) ;
 int dbcoltype (int ,scalar_t__) ;
 TYPE_4__* dbcoltypeinfo (int ,scalar_t__) ;
 int dbcolutype (int ,scalar_t__) ;
 int pdo_dblib_get_field_name (int) ;

__attribute__((used)) static int pdo_dblib_stmt_get_column_meta(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
 pdo_dblib_db_handle *H = S->H;
 DBTYPEINFO* dbtypeinfo;
 int coltype;

 if(colno >= stmt->column_count || colno < 0) {
  return FAILURE;
 }

 array_init(return_value);

 dbtypeinfo = dbcoltypeinfo(H->link, colno+1);

 if(!dbtypeinfo) return FAILURE;

 coltype = dbcoltype(H->link, colno+1);

 add_assoc_long(return_value, "max_length", dbcollen(H->link, colno+1) );
 add_assoc_long(return_value, "precision", (int) dbtypeinfo->precision );
 add_assoc_long(return_value, "scale", (int) dbtypeinfo->scale );
 add_assoc_string(return_value, "column_source", dbcolsource(H->link, colno+1));
 add_assoc_string(return_value, "native_type", pdo_dblib_get_field_name(coltype));
 add_assoc_long(return_value, "native_type_id", coltype);
 add_assoc_long(return_value, "native_usertype_id", dbcolutype(H->link, colno+1));

 switch (coltype) {
  case 131:
  case 130:
  case 129:
  case 128:
   add_assoc_long(return_value, "pdo_type", PDO_PARAM_INT);
   break;
  default:
   add_assoc_long(return_value, "pdo_type", PDO_PARAM_STR);
   break;
 }

 return 1;
}
