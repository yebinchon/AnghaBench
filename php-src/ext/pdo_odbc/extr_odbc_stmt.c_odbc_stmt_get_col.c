
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {char* convbuf; int stmt; TYPE_3__* cols; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
struct TYPE_8__ {char* data; int fetched_len; scalar_t__ is_unicode; scalar_t__ is_long; } ;
typedef TYPE_3__ pdo_odbc_column ;
typedef scalar_t__ RETCODE ;





 scalar_t__ SQLGetData (int ,int,int ,char*,int,int*) ;
 int SQL_C_BINARY ;
 int SQL_C_CHAR ;
 scalar_t__ SQL_NULL_DATA ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int efree (char*) ;
 char* emalloc (int) ;
 char* erealloc (char*,int) ;
 char* estrndup (char*,int) ;
 int memcpy (char*,char*,int) ;
 int pdo_odbc_ucs22utf8 (TYPE_1__*,scalar_t__,char*,int,int*) ;

__attribute__((used)) static int odbc_stmt_get_col(pdo_stmt_t *stmt, int colno, char **ptr, zend_ulong *len, int *caller_frees)
{
 pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;
 pdo_odbc_column *C = &S->cols[colno];
 zend_ulong ulen;


 if (C->is_long) {
  zend_ulong used = 0;
  char *buf;
  RETCODE rc;





  rc = SQLGetData(S->stmt, colno+1, C->is_unicode ? SQL_C_BINARY : SQL_C_CHAR, C->data,
    256, &C->fetched_len);

  if (rc == SQL_SUCCESS) {


   goto in_data;
  }

  if (rc == SQL_SUCCESS_WITH_INFO) {
   char *buf2;

   buf2 = emalloc(256);
   buf = estrndup(C->data, 256);
   used = 255;

   do {
    C->fetched_len = 0;

    rc = SQLGetData(S->stmt, colno+1, SQL_C_CHAR, buf2, 256, &C->fetched_len);


    if (rc==SQL_SUCCESS_WITH_INFO) {



     buf = erealloc(buf, used + 255+1);
     memcpy(buf + used, buf2, 255);
     used = used + 255;
    } else if (rc==SQL_SUCCESS) {
     buf = erealloc(buf, used + C->fetched_len+1);
     memcpy(buf + used, buf2, C->fetched_len);
     used = used + C->fetched_len;
    } else {

     break;
    }

   } while (1);

   efree(buf2);


   buf[used] = '\0';

   *ptr = buf;
   *caller_frees = 1;
   *len = used;
   if (C->is_unicode) {
    goto unicode_conv;
   }
   return 1;
  }


  *ptr = ((void*)0);
  *len = 0;
  return 1;
 }

in_data:

 if (C->fetched_len == SQL_NULL_DATA) {

  *ptr = ((void*)0);
  *len = 0;
  return 1;
 } else if (C->fetched_len >= 0) {

  *ptr = C->data;
  *len = C->fetched_len;
  if (C->is_unicode) {
   goto unicode_conv;
  }
  return 1;
 } else {

  *ptr = ((void*)0);
  *len = 0;
  return 1;
 }

 unicode_conv:
 switch (pdo_odbc_ucs22utf8(stmt, C->is_unicode, *ptr, *len, &ulen)) {
  case 130:

  case 129:

   return 1;

  case 128:
   if (*caller_frees) {
    efree(*ptr);
   }
   *ptr = emalloc(ulen + 1);
   *len = ulen;
   memcpy(*ptr, S->convbuf, ulen+1);
   *caller_frees = 1;
   return 1;
 }
 return 1;
}
