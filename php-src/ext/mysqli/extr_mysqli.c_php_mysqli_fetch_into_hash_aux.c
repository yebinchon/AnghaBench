
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_ulong ;
typedef int zend_long ;
typedef int tmp ;
typedef int my_ulonglong ;
struct TYPE_5__ {scalar_t__ type; int flags; } ;
struct TYPE_4__ {int name; } ;
typedef scalar_t__* MYSQL_ROW ;
typedef int MYSQL_RES ;
typedef TYPE_1__ MYSQL_FIELD ;


 int MYSQLI_ASSOC ;
 char* MYSQLI_LLU_SPEC ;
 char* MYSQLI_LL_SPEC ;
 int MYSQLI_NUM ;
 int MYSQLND_FETCH_ASSOC ;
 int MYSQLND_FETCH_NUM ;
 int MYSQLND_MYSQLI ;
 scalar_t__ MYSQL_TYPE_BIT ;
 int RETURN_NULL () ;
 int UNSIGNED_FLAG ;
 int ZVAL_STRING (int *,char*) ;
 int ZVAL_STRINGL (int *,scalar_t__,int ) ;
 int Z_ADDREF (int ) ;
 scalar_t__ Z_REFCOUNTED (int ) ;
 int add_assoc_null (int *,int ) ;
 int add_assoc_zval (int *,int ,int *) ;
 int add_index_null (int *,unsigned int) ;
 int add_index_zval (int *,unsigned int,int *) ;
 int array_init (int *) ;
 int bit_uint2korr (scalar_t__) ;
 int bit_uint3korr (scalar_t__) ;
 int bit_uint4korr (scalar_t__) ;
 int bit_uint5korr (scalar_t__) ;
 int bit_uint6korr (scalar_t__) ;
 int bit_uint7korr (scalar_t__) ;
 int bit_uint8korr (scalar_t__) ;
 TYPE_3__* mysql_fetch_field_direct (int *,unsigned int) ;
 TYPE_1__* mysql_fetch_fields (int *) ;
 int * mysql_fetch_lengths (int *) ;
 scalar_t__* mysql_fetch_row (int *) ;
 unsigned int mysql_num_fields (int *) ;
 int mysqlnd_fetch_into (int *,int,int *,int ) ;
 int snprintf (char*,int,char*,int ) ;
 int uint1korr (scalar_t__) ;

void php_mysqli_fetch_into_hash_aux(zval *return_value, MYSQL_RES * result, zend_long fetchtype)
{

 MYSQL_ROW row;
 unsigned int i, num_fields;
 MYSQL_FIELD *fields;
 zend_ulong *field_len;

 if (!(row = mysql_fetch_row(result))) {
  RETURN_NULL();
 }

 if (fetchtype & MYSQLI_ASSOC) {
  fields = mysql_fetch_fields(result);
 }

 array_init(return_value);
 field_len = mysql_fetch_lengths(result);
 num_fields = mysql_num_fields(result);

 for (i = 0; i < num_fields; i++) {
  if (row[i]) {
   zval res;
   {

    ZVAL_STRINGL(&res, row[i], field_len[i]);
   }

   if (fetchtype & MYSQLI_NUM) {
    add_index_zval(return_value, i, &res);
   }
   if (fetchtype & MYSQLI_ASSOC) {
    if (fetchtype & MYSQLI_NUM && Z_REFCOUNTED(res)) {
     Z_ADDREF(res);
    }
    add_assoc_zval(return_value, fields[i].name, &res);
   }
  } else {
   if (fetchtype & MYSQLI_NUM) {
    add_index_null(return_value, i);
   }
   if (fetchtype & MYSQLI_ASSOC) {
    add_assoc_null(return_value, fields[i].name);
   }
  }
 }



}
