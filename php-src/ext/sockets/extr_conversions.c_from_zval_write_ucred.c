
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int ser_context ;


 int descriptors_ucred ;
 int from_zval_write_aggregation (int const*,char*,int ,int *) ;

void from_zval_write_ucred(const zval *container, char *ucred_c, ser_context *ctx)
{
 from_zval_write_aggregation(container, ucred_c, descriptors_ucred, ctx);
}
