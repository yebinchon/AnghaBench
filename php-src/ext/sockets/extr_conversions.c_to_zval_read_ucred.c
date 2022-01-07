
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int res_context ;


 int array_init_size (int *,int) ;
 int descriptors_ucred ;
 int to_zval_read_aggregation (char const*,int *,int ,int *) ;

void to_zval_read_ucred(const char *data, zval *zv, res_context *ctx)
{
 array_init_size(zv, 3);

 to_zval_read_aggregation(data, zv, descriptors_ucred, ctx);
}
