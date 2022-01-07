
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int SCAN_ERROR_EOF ;
 int ZVAL_LONG (int *,int ) ;
 int convert_to_null (int *) ;

__attribute__((used)) static inline void scan_set_error_return(int numVars, zval *return_value)
{
 if (numVars) {
  ZVAL_LONG(return_value, SCAN_ERROR_EOF);
 } else {

  convert_to_null(return_value);
 }
}
