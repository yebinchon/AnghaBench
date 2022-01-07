
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int ser_context ;


 int descriptors_sockaddr_in ;
 int from_zval_write_aggregation (int const*,char*,int ,int *) ;

__attribute__((used)) static void from_zval_write_sockaddr_in(const zval *container, char *sockaddr, ser_context *ctx)
{
 from_zval_write_aggregation(container, sockaddr, descriptors_sockaddr_in, ctx);
}
