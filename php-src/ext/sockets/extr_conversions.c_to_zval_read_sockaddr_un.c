
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int res_context ;


 int descriptors_sockaddr_un ;
 int to_zval_read_aggregation (char const*,int *,int ,int *) ;

__attribute__((used)) static void to_zval_read_sockaddr_un(const char *data, zval *zv, res_context *ctx)
{
 to_zval_read_aggregation(data, zv, descriptors_sockaddr_un, ctx);
}
