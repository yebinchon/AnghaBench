
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_uchar ;
struct TYPE_5__ {unsigned int param_count; TYPE_1__* param_bind; } ;
struct TYPE_4__ {int type; int flags; int zv; } ;
typedef TYPE_2__ MYSQLND_STMT_DATA ;


 scalar_t__ IS_NULL ;
 scalar_t__ IS_STRING ;
 int MYSQLND_PARAM_BIND_BLOB_USED ;






 int ZVAL_DEREF (int *) ;
 int Z_DVAL_P (int *) ;
 int Z_ISUNDEF (int ) ;
 int Z_ISUNDEF_P (int *) ;
 int Z_LVAL_P (int *) ;
 size_t Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_double_ex (int *) ;
 int float8store (int *,int ) ;
 int int1store (int *,int ) ;
 int int4store (int *,int ) ;
 int int8store (int *,int ) ;
 int memcpy (int *,int ,size_t const) ;
 int * php_mysqlnd_net_store_length (int *,size_t const) ;

__attribute__((used)) static void
mysqlnd_stmt_execute_store_param_values(MYSQLND_STMT_DATA * stmt, zval * copies, zend_uchar * buf, zend_uchar ** p, size_t null_byte_offset)
{
 unsigned int i;
 for (i = 0; i < stmt->param_count; i++) {
  zval *data, *parameter = &stmt->param_bind[i].zv;

  ZVAL_DEREF(parameter);
  data = (copies && !Z_ISUNDEF(copies[i]))? &copies[i]: parameter;

  if (!Z_ISUNDEF_P(parameter) && Z_TYPE_P(data) == IS_NULL) {
   (buf + null_byte_offset)[i/8] |= (zend_uchar) (1 << (i & 7));
  } else {
   switch (stmt->param_bind[i].type) {
    case 133:
     convert_to_double_ex(data);
     float8store(*p, Z_DVAL_P(data));
     (*p) += 8;
     break;
    case 131:
     if (Z_TYPE_P(data) == IS_STRING) {
      goto send_string;
     }

     int8store(*p, Z_LVAL_P(data));
     (*p) += 8;
     break;
    case 132:
     if (Z_TYPE_P(data) == IS_STRING) {
      goto send_string;
     }

     int4store(*p, Z_LVAL_P(data));
     (*p) += 4;
     break;
    case 129:
     if (Z_TYPE_P(data) == IS_STRING) {
      goto send_string;
     }
     int1store(*p, Z_LVAL_P(data));
     (*p)++;
     break;
    case 130:
     if (stmt->param_bind[i].flags & MYSQLND_PARAM_BIND_BLOB_USED) {
      stmt->param_bind[i].flags &= ~MYSQLND_PARAM_BIND_BLOB_USED;
     } else {

      *p = php_mysqlnd_net_store_length(*p, 0);
     }
     break;
    case 128:
send_string:
     {
      const size_t len = Z_STRLEN_P(data);

      *p = php_mysqlnd_net_store_length(*p, len);
      memcpy(*p, Z_STRVAL_P(data), len);
      (*p) += len;
     }
     break;
    default:

     (buf + null_byte_offset)[i/8] |= (zend_uchar) (1 << (i & 7));
     break;
   }
  }
 }
}
