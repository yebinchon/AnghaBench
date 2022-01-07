
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pdo_column_data {int param_type; int maxlen; void* name; } ;
struct TYPE_5__ {int column_count; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {scalar_t__ computed_column_name_count; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_dblib_stmt ;
struct TYPE_7__ {int link; } ;
typedef TYPE_3__ pdo_dblib_db_handle ;
typedef int buf ;


 int FAILURE ;
 int PDO_PARAM_ZVAL ;
 int dbcollen (int ,int) ;
 scalar_t__ dbcolname (int ,int) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int strlen (char*) ;
 void* zend_string_init (char*,int,int ) ;

__attribute__((used)) static int pdo_dblib_stmt_describe(pdo_stmt_t *stmt, int colno)
{
 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
 pdo_dblib_db_handle *H = S->H;
 struct pdo_column_data *col;
 char *fname;

 if(colno >= stmt->column_count || colno < 0) {
  return FAILURE;
 }

 if (colno == 0) {
  S->computed_column_name_count = 0;
 }

 col = &stmt->columns[colno];
 fname = (char*)dbcolname(H->link, colno+1);

 if (fname && *fname) {
  col->name = zend_string_init(fname, strlen(fname), 0);
 } else {
  if (S->computed_column_name_count > 0) {
   char buf[16];
   int len;

   len = snprintf(buf, sizeof(buf), "computed%d", S->computed_column_name_count);
   col->name = zend_string_init(buf, len, 0);
  } else {
   col->name = zend_string_init("computed", strlen("computed"), 0);
  }

  S->computed_column_name_count++;
 }

 col->maxlen = dbcollen(H->link, colno+1);
 col->param_type = PDO_PARAM_ZVAL;

 return 1;
}
