
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int ser_context ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ Z_TYPE_P (int const*) ;
 int do_from_zval_err (int *,char*,char*) ;
 int from_array_iterate (int const*,int *,void**,int *) ;
 int from_zval_write_fd_array_aux ;

void from_zval_write_fd_array(const zval *arr, char *int_arr, ser_context *ctx)
{
 if (Z_TYPE_P(arr) != IS_ARRAY) {
  do_from_zval_err(ctx, "%s", "expected an array here");
  return;
 }

   from_array_iterate(arr, &from_zval_write_fd_array_aux, (void**)&int_arr, ctx);
}
