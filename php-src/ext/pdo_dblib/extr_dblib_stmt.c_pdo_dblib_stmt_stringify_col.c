
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int LPBYTE ;
typedef int DBINT ;
typedef char DBCHAR ;


 int DATETIME_MAX_LEN ;
 int SQLCHAR ;


 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int dbconvert (int *,int,int ,int,int ,int ,int) ;
 int efree (char*) ;
 void* emalloc (int) ;

__attribute__((used)) static void pdo_dblib_stmt_stringify_col(int coltype, LPBYTE data, DBINT data_len, zval **ptr)
{
 DBCHAR *tmp_data;
 DBINT tmp_data_len;
 zval *zv;


 tmp_data_len = 32 + (2 * (data_len));

 switch (coltype) {
  case 128:
  case 129: {
   if (tmp_data_len < DATETIME_MAX_LEN) {
    tmp_data_len = DATETIME_MAX_LEN;
   }
   break;
  }
 }

 tmp_data = emalloc(tmp_data_len);
 data_len = dbconvert(((void*)0), coltype, data, data_len, SQLCHAR, (LPBYTE) tmp_data, tmp_data_len);

 zv = emalloc(sizeof(zval));
 if (data_len > 0) {




  while (data_len > 0 && tmp_data[data_len - 1] == ' ') {
   data_len--;
  }

  ZVAL_STRINGL(zv, tmp_data, data_len);
 } else {
  ZVAL_EMPTY_STRING(zv);
 }

 efree(tmp_data);

 *ptr = zv;
}
