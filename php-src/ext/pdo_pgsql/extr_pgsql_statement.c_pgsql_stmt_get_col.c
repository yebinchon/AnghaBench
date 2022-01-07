
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_long ;
typedef int zend_bool ;
struct pdo_column_data {int param_type; } ;
struct TYPE_8__ {int database_object_handle; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {TYPE_2__* H; TYPE_1__* cols; scalar_t__ current_row; int result; } ;
typedef TYPE_4__ pdo_pgsql_stmt ;
struct TYPE_7__ {int server; } ;
struct TYPE_6__ {int boolval; int pgsql_type; int intval; } ;
typedef int Oid ;


 int INV_READ ;
 int OIDOID ;
 int PQfreemem (char*) ;
 scalar_t__ PQgetisnull (int ,scalar_t__,int) ;
 size_t PQgetlength (int ,scalar_t__,int) ;
 char* PQgetvalue (int ,scalar_t__,int) ;
 scalar_t__ PQunescapeBytea (unsigned char*,size_t*) ;
 int TEMP_STREAM_READONLY ;
 int ZEND_ATOL (int ,char*) ;
 char* estrndup (char*,size_t) ;
 int lo_open (int ,int ,int ) ;
 scalar_t__ pdo_pgsql_create_lob_stream (int *,int,int ) ;
 scalar_t__ php_stream_memory_open (int ,char*,int ) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static int pgsql_stmt_get_col(pdo_stmt_t *stmt, int colno, char **ptr, size_t *len, int *caller_frees )
{
 pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
 struct pdo_column_data *cols = stmt->columns;
 size_t tmp_len;

 if (!S->result) {
  return 0;
 }


 if (PQgetisnull(S->result, S->current_row - 1, colno)) {
  *ptr = ((void*)0);
  *len = 0;
 } else {
  *ptr = PQgetvalue(S->result, S->current_row - 1, colno);
  *len = PQgetlength(S->result, S->current_row - 1, colno);

  switch (cols[colno].param_type) {

   case 133:
    ZEND_ATOL(S->cols[colno].intval, *ptr);
    *ptr = (char *) &(S->cols[colno].intval);
    *len = sizeof(zend_long);
    break;

   case 135:
    S->cols[colno].boolval = **ptr == 't';
    *ptr = (char *) &(S->cols[colno].boolval);
    *len = sizeof(zend_bool);
    break;

   case 132:
    if (S->cols[colno].pgsql_type == OIDOID) {

     char *end_ptr;
     Oid oid = (Oid)strtoul(*ptr, &end_ptr, 10);
     int loid = lo_open(S->H->server, oid, INV_READ);
     if (loid >= 0) {
      *ptr = (char*)pdo_pgsql_create_lob_stream(&stmt->database_object_handle, loid, oid);
      *len = 0;
      return *ptr ? 1 : 0;
     }
     *ptr = ((void*)0);
     *len = 0;
     return 0;
    } else {
     char *tmp_ptr = (char *)PQunescapeBytea((unsigned char *)*ptr, &tmp_len);
     if (!tmp_ptr) {

      *len = 0;
      return 0;
     }
     if (!tmp_len) {

      *ptr = (char *)php_stream_memory_open(TEMP_STREAM_READONLY, "", 0);
      PQfreemem(tmp_ptr);
      *len = 0;
     } else {
      *ptr = estrndup(tmp_ptr, tmp_len);
      PQfreemem(tmp_ptr);
      *len = tmp_len;
      *caller_frees = 1;
     }
    }
    break;
   case 131:
   case 129:
   case 130:
   case 134:
   case 128:
   default:
    break;
  }
 }

 return 1;
}
