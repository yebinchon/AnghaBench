
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef size_t zend_long ;
struct TYPE_8__ {size_t column_count; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {TYPE_2__* H; TYPE_1__* cols; int result; } ;
typedef TYPE_4__ pdo_pgsql_stmt ;
struct TYPE_7__ {int server; } ;
struct TYPE_6__ {int pgsql_type; } ;
typedef int PGresult ;
typedef int Oid ;
typedef int ExecStatusType ;


 char* BOOLLABEL ;

 char* BYTEALABEL ;

 char* DATELABEL ;

 int FAILURE ;
 char* INT2LABEL ;

 char* INT4LABEL ;

 char* INT8LABEL ;

 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char*) ;
 int PQftable (int ,size_t) ;
 char* PQgetvalue (int *,int ,int ) ;
 int PQntuples (int *) ;
 int PQresultStatus (int *) ;
 char* TEXTLABEL ;

 char* TIMESTAMPLABEL ;

 char* VARCHARLABEL ;

 int add_assoc_long (int *,char*,int) ;
 int add_assoc_string (int *,char*,char*) ;
 int array_init (int *) ;
 int efree (char*) ;
 char* pdo_pgsql_translate_oid_to_table (int,int ) ;
 int spprintf (char**,int ,char*,int) ;

__attribute__((used)) static int pgsql_stmt_get_column_meta(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
 pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
 PGresult *res;
 char *q=((void*)0);
 ExecStatusType status;
 Oid table_oid;
 char *table_name=((void*)0);

 if (!S->result) {
  return FAILURE;
 }

 if (colno >= stmt->column_count) {
  return FAILURE;
 }

 array_init(return_value);
 add_assoc_long(return_value, "pgsql:oid", S->cols[colno].pgsql_type);

 table_oid = PQftable(S->result, colno);
 add_assoc_long(return_value, "pgsql:table_oid", table_oid);
 table_name = pdo_pgsql_translate_oid_to_table(table_oid, S->H->server);
 if (table_name) {
  add_assoc_string(return_value, "table", table_name);
  efree(table_name);
 }

 switch (S->cols[colno].pgsql_type) {
  case 136:
   add_assoc_string(return_value, "native_type", BOOLLABEL);
   break;
  case 135:
   add_assoc_string(return_value, "native_type", BYTEALABEL);
   break;
  case 131:
   add_assoc_string(return_value, "native_type", INT8LABEL);
   break;
  case 133:
   add_assoc_string(return_value, "native_type", INT2LABEL);
   break;
  case 132:
   add_assoc_string(return_value, "native_type", INT4LABEL);
   break;
  case 130:
   add_assoc_string(return_value, "native_type", TEXTLABEL);
   break;
  case 128:
   add_assoc_string(return_value, "native_type", VARCHARLABEL);
   break;
  case 134:
   add_assoc_string(return_value, "native_type", DATELABEL);
   break;
  case 129:
   add_assoc_string(return_value, "native_type", TIMESTAMPLABEL);
   break;
  default:

   spprintf(&q, 0, "SELECT TYPNAME FROM PG_TYPE WHERE OID=%u", S->cols[colno].pgsql_type);
   res = PQexec(S->H->server, q);
   efree(q);
   status = PQresultStatus(res);
   if (status == PGRES_TUPLES_OK && 1 == PQntuples(res)) {
    add_assoc_string(return_value, "native_type", PQgetvalue(res, 0, 0));
   }
   PQclear(res);
 }
 return 1;
}
